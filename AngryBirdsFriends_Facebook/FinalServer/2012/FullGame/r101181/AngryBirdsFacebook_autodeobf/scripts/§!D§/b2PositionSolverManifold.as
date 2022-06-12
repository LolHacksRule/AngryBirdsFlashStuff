package §!D§
{
   import §#]§.*;
   import §4!!§.*;
   import §48§.*;
   import §55§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §["'§:b2Vec2;
      
      private static var §0Q§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §["'§ = new b2Vec2();
         }
         do
         {
            §0Q§ = new b2Vec2();
         }
         while(!(_loc1_ || _loc1_));
         
      }
      
      public var §9+§:b2Vec2;
      
      public var §1!d§:Vector.<b2Vec2>;
      
      public var §,M§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc3_))
         {
            super();
            while(true)
            {
               this.§9+§ = new b2Vec2();
               loop3:
               while(_loc2_ || _loc3_)
               {
                  this.§1!d§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  if(!_loc2_)
                  {
                     continue;
                  }
                  addr35:
                  if(_loc2_ || this)
                  {
                     if(false)
                     {
                        while(true)
                        {
                           this.§,M§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                           continue loop3;
                        }
                        addr80:
                        §§push(0);
                        addr44:
                     }
                     else
                     {
                        §§goto(addr80);
                     }
                     var _loc1_:* = §§pop();
                     while(true)
                     {
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(!_loc3_)
                           {
                              break;
                           }
                           loop5:
                           while(!(_loc2_ || _loc3_))
                           {
                              while(true)
                              {
                                 _loc1_++;
                                 continue loop5;
                              }
                           }
                           continue;
                        }
                        this.§1!d§[_loc1_] = new b2Vec2();
                        §§goto(addr121);
                     }
                     return;
                  }
                  while(true)
                  {
                     §§goto(addr35);
                  }
                  addr76:
                  §§goto(addr44);
               }
            }
         }
         §§goto(addr76);
      }
      
      public function §`!r§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
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
            b2Settings.b2Assert(param1.§<?§ > 0);
         }
         §§push(param1.type);
         if(_loc19_)
         {
            var _loc17_:* = §§pop();
            if(!_loc18_)
            {
               §§push(b2Manifold.§9M§);
               if(_loc19_ || _loc2_)
               {
                  §§push(_loc17_);
                  if(_loc19_ || this)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc19_ || _loc2_)
                        {
                           addr1823:
                           §§push(0);
                           if(_loc19_ || _loc2_)
                           {
                              addr1891:
                              loop93:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = param1.§!!v§.m_xf.R;
                                    _loc6_ = param1.localPoint;
                                    if(!_loc18_)
                                    {
                                       §§push(param1.§!!v§);
                                       if(!(_loc18_ && _loc3_))
                                       {
                                          §§push(§§pop().m_xf);
                                          if(_loc19_ || this)
                                          {
                                             §§push(§§pop().position);
                                             if(!(_loc18_ && _loc3_))
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc18_ && _loc3_))
                                                {
                                                   §§push(_loc5_.col1);
                                                   if(_loc19_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc18_ && _loc2_))
                                                      {
                                                         §§push(_loc6_.x);
                                                         if(!_loc18_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc19_ || this)
                                                            {
                                                               §§push(_loc5_.col2);
                                                               if(_loc19_ || _loc2_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc19_ || _loc2_)
                                                                  {
                                                                     §§push(_loc6_.y);
                                                                     if(!(_loc18_ && _loc2_))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc19_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc19_ || param1)
                                                                              {
                                                                                 addr168:
                                                                                 §§push(Number(§§pop()));
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr171:
                                                                                    _loc9_ = §§pop();
                                                                                    if(!(_loc18_ && _loc3_))
                                                                                    {
                                                                                       addr181:
                                                                                       §§push(param1.§!!v§.m_xf);
                                                                                       if(!(_loc18_ && _loc2_))
                                                                                       {
                                                                                          addr190:
                                                                                          §§push(§§pop().position.y);
                                                                                          if(_loc19_ || param1)
                                                                                          {
                                                                                             addr200:
                                                                                             §§push(_loc5_.col1.y);
                                                                                             if(_loc19_ || _loc2_)
                                                                                             {
                                                                                                addr208:
                                                                                                §§push(_loc6_.x);
                                                                                                if(!(_loc18_ && _loc2_))
                                                                                                {
                                                                                                   addr217:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc19_ || _loc2_)
                                                                                                   {
                                                                                                      addr227:
                                                                                                      addr225:
                                                                                                      §§push(_loc5_.col2.y);
                                                                                                      if(_loc19_ || this)
                                                                                                      {
                                                                                                      }
                                                                                                      addr239:
                                                                                                      addr238:
                                                                                                      §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                      if(_loc19_ || _loc3_)
                                                                                                      {
                                                                                                         addr247:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      _loc10_ = §§pop();
                                                                                                      _loc5_ = param1.§'!4§.m_xf.R;
                                                                                                      _loc6_ = param1.§+V§[0].localPoint;
                                                                                                      if(_loc19_)
                                                                                                      {
                                                                                                         §§push(param1.§'!4§);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().m_xf);
                                                                                                            addr673:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().position);
                                                                                                               addr674:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr675:
                                                                                                                  loop3:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.col1);
                                                                                                                     loop4:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        if(_loc19_)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr683:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 addr685:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr686:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       addr688:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr689:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr626:
                                                                                                                              if(_loc18_ && param1)
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              loop16:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(_loc19_ || this)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop17:
                                                                                                                                       while(!(_loc18_ && _loc2_))
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop18:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             loop19:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop20:
                                                                                                                                                while(!(_loc18_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                   loop21:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      if(_loc19_ || param1)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_);
                                                                                                                                                         continue loop18;
                                                                                                                                                      }
                                                                                                                                                      addr610:
                                                                                                                                                      addr581:
                                                                                                                                                      loop23:
                                                                                                                                                      while(_loc19_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop24:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc13_ = §§pop();
                                                                                                                                                            loop25:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc12_);
                                                                                                                                                               if(_loc19_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc10_);
                                                                                                                                                                  while(!_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     addr470:
                                                                                                                                                                     if(_loc18_ && _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop17;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                     {
                                                                                                                                                                        addr483:
                                                                                                                                                                        if(_loc19_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(_loc19_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop16;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr506:
                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       loop40:
                                                                                                                                                                                       while(_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc16_ = §§pop();
                                                                                                                                                                                          loop41:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§9+§);
                                                                                                                                                                                             loop42:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                loop43:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc16_);
                                                                                                                                                                                                   loop44:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                      loop45:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         loop46:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(this.§9+§);
                                                                                                                                                                                                            loop30:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc19_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                     if(_loc19_ || _loc2_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() / §§pop());
                                                                                                                                                                                                                        loop32:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                              loop33:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc19_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§1!d§[0].x = 0.5 * (_loc9_ + _loc11_);
                                                                                                                                                                                                                                       loop35:
                                                                                                                                                                                                                                       while(!(_loc18_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop36:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§1!d§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                                                                             while(_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   this.§,M§[0] = _loc13_ * this.§9+§.x + _loc14_ * this.§9+§.y - param1.radius;
                                                                                                                                                                                                                                                   if(_loc19_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!(_loc18_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc19_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr302:
                                                                                                                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop93;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop36;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop28:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr449:
                                                                                                                                                                                                                                                                  if(!(_loc19_ || param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc14_ = §§pop();
                                                                                                                                                                                                                                                                           continue loop28;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop24;
                                                                                                                                                                                                                                                                        §§goto(addr449);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop19;
                                                                                                                                                                                                                                                                     addr557:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                                                                        if(!(_loc19_ || this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     addr509:
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                                                                                                     continue loop16;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr470);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop20;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop41;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         loop47:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(this.§9+§);
                                                                                                                                                                                                                                                            if(_loc19_ || param1)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop32;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop42;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr391:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc19_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().x = 1;
                                                                                                                                                                                                                                                                  continue loop47;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop30;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop35;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop25;
                                                                                                                                                                                                                                       addr385:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr531:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop40;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop41;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop43;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop44;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop45;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop45;
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
                                                                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                                                                          continue loop0;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr535:
                                                                                                                                                                                       addr699:
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr509);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr535);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(_loc19_ || this)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr699);
                                                                                                                                                                           }
                                                                                                                                                                           addr690:
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.x);
                                                                                                                                                                           if(!(_loc19_ || param1))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop17;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr626);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr686);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr615:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr506);
                                                                                                                                                                  }
                                                                                                                                                                  continue loop18;
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr557);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc5_.col1);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr615);
                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                         §§goto(addr581);
                                                                                                                                                      }
                                                                                                                                                      addr581:
                                                                                                                                                      continue loop4;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr689);
                                                                                                                                       addr651:
                                                                                                                                    }
                                                                                                                                    §§goto(addr688);
                                                                                                                                 }
                                                                                                                                 §§goto(addr651);
                                                                                                                              }
                                                                                                                              §§goto(addr685);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr690);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr400);
                                                                                                   }
                                                                                                   §§goto(addr239);
                                                                                                }
                                                                                                §§goto(addr238);
                                                                                                §§push(§§pop() * _loc6_.y);
                                                                                             }
                                                                                             §§goto(addr239);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr239);
                                                                                 }
                                                                                 §§goto(addr247);
                                                                              }
                                                                              §§goto(addr171);
                                                                           }
                                                                           §§goto(addr208);
                                                                        }
                                                                        §§goto(addr217);
                                                                     }
                                                                     §§goto(addr208);
                                                                  }
                                                                  §§goto(addr239);
                                                               }
                                                               §§goto(addr227);
                                                            }
                                                            §§goto(addr225);
                                                         }
                                                         §§goto(addr217);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                   §§goto(addr200);
                                                }
                                                §§goto(addr168);
                                             }
                                             §§goto(addr190);
                                          }
                                          §§goto(addr227);
                                       }
                                       §§goto(addr181);
                                    }
                                    §§goto(addr227);
                                 case 1:
                                    §§goto(addr706);
                                 case 2:
                                    _loc5_ = param1.§'!4§.m_xf.R;
                                    _loc6_ = param1.§=!,§;
                                    §§push(param1.§!!v§.m_xf);
                                    if(!_loc18_)
                                    {
                                       §§push(this.§9+§);
                                       if(!(_loc18_ && _loc3_))
                                       {
                                          §§push(_loc5_.col1);
                                          if(!(_loc18_ && this))
                                          {
                                             §§push(§§pop().x);
                                             if(_loc19_ || param1)
                                             {
                                                §§push(_loc6_.x);
                                                if(_loc19_ || this)
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
                                                            if(_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc19_ || this)
                                                               {
                                                                  addr1294:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc19_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr1304:
                                                                        §§push(this.§9+§);
                                                                        §§push(_loc5_.col1.y);
                                                                        if(!(_loc18_ && _loc3_))
                                                                        {
                                                                           addr1312:
                                                                           §§push(_loc6_.x);
                                                                           if(_loc19_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc19_)
                                                                              {
                                                                              }
                                                                              addr1333:
                                                                              §§pop().y = §§pop();
                                                                              _loc5_ = param1.§'!4§.m_xf.R;
                                                                              _loc6_ = param1.localPoint;
                                                                              if(!(_loc18_ && this))
                                                                              {
                                                                                 §§push(param1.§'!4§);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    §§push(§§pop().m_xf);
                                                                                    if(!(_loc18_ && param1))
                                                                                    {
                                                                                       §§push(§§pop().position);
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          if(!(_loc18_ && _loc2_))
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
                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                      {
                                                                                                         §§push(_loc5_.col2);
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc19_ || this)
                                                                                                            {
                                                                                                               §§push(_loc6_.y);
                                                                                                               if(_loc19_ || _loc2_)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(!(_loc18_ && this))
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     if(!(_loc18_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           if(_loc19_)
                                                                                                                           {
                                                                                                                              addr1436:
                                                                                                                              _loc7_ = §§pop();
                                                                                                                              if(_loc19_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr1446:
                                                                                                                                 §§push(param1.§'!4§.m_xf);
                                                                                                                                 if(!(_loc18_ && param1))
                                                                                                                                 {
                                                                                                                                    addr1455:
                                                                                                                                    §§push(§§pop().position.y);
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       addr1477:
                                                                                                                                       §§push(_loc5_.col1.y);
                                                                                                                                       if(!(_loc18_ && _loc3_))
                                                                                                                                       {
                                                                                                                                          addr1468:
                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                             }
                                                                                                                                             addr1489:
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!(_loc18_ && this))
                                                                                                                                             {
                                                                                                                                                addr1498:
                                                                                                                                                _loc8_ = §§pop();
                                                                                                                                                _loc5_ = param1.§!!v§.m_xf.R;
                                                                                                                                                if(_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(0);
                                                                                                                                                   if(_loc19_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      _loc2_ = §§pop();
                                                                                                                                                      if(!(_loc18_ && _loc2_))
                                                                                                                                                      {
                                                                                                                                                         addr1523:
                                                                                                                                                         loop92:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc2_);
                                                                                                                                                            addr1738:
                                                                                                                                                            while(§§pop() < param1.§<?§)
                                                                                                                                                            {
                                                                                                                                                               _loc6_ = param1.§+V§[_loc2_].localPoint;
                                                                                                                                                               if(!(_loc18_ && this))
                                                                                                                                                               {
                                                                                                                                                                  §§push(param1.§!!v§);
                                                                                                                                                                  loop72:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().m_xf);
                                                                                                                                                                     addr1711:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop().position);
                                                                                                                                                                        addr1712:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1713:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.col1);
                                                                                                                                                                              addr1715:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 addr1716:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                                                                    if(!(_loc18_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc5_.col2);
                                                                                                                                                                                          addr1728:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             addr1729:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                                                                addr1731:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1726:
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1732:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       addr1733:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          addr1734:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             addr1735:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                continue loop72;
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
                                                                                                                                                               §§goto(addr1589);
                                                                                                                                                               continue loop92;
                                                                                                                                                            }
                                                                                                                                                            if(_loc19_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§9+§);
                                                                                                                                                               if(!_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(this.§9+§);
                                                                                                                                                                  if(!(_loc18_ && _loc3_))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-1);
                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc18_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr1782:
                                                                                                                                                                                 §§push(this.§9+§);
                                                                                                                                                                                 §§push(this.§9+§.y);
                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr1787:
                                                                                                                                                                                    §§pop().y = §§pop() * -1;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr1787);
                                                                                                                                                                              }
                                                                                                                                                                              break loop93;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1787);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1782);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1782);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1738);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1523);
                                                                                                                                                addr1497:
                                                                                                                                             }
                                                                                                                                             §§goto(addr1498);
                                                                                                                                          }
                                                                                                                                          addr1488:
                                                                                                                                          §§goto(addr1489);
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                       }
                                                                                                                                       §§push(_loc5_.col2.y);
                                                                                                                                       if(_loc19_ || param1)
                                                                                                                                       {
                                                                                                                                          addr1485:
                                                                                                                                          §§goto(addr1488);
                                                                                                                                          §§push(§§pop() * _loc6_.y);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1488);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1497);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1498);
                                                                                                                        }
                                                                                                                        §§goto(addr1436);
                                                                                                                     }
                                                                                                                     §§goto(addr1468);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr1485);
                                                                                                            }
                                                                                                            §§goto(addr1468);
                                                                                                         }
                                                                                                         §§goto(addr1477);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr1468);
                                                                                                }
                                                                                                §§goto(addr1489);
                                                                                             }
                                                                                             §§goto(addr1477);
                                                                                          }
                                                                                          §§goto(addr1436);
                                                                                       }
                                                                                       §§goto(addr1455);
                                                                                    }
                                                                                    §§goto(addr1498);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1446);
                                                                           }
                                                                           addr1329:
                                                                           §§goto(addr1333);
                                                                           §§push(§§pop() + §§pop() * _loc6_.y);
                                                                        }
                                                                     }
                                                                     §§goto(addr1333);
                                                                  }
                                                                  §§push(_loc5_.col2.y);
                                                                  if(_loc19_ || this)
                                                                  {
                                                                     §§goto(addr1329);
                                                                  }
                                                               }
                                                            }
                                                            §§goto(addr1329);
                                                         }
                                                      }
                                                      §§goto(addr1294);
                                                   }
                                                   §§goto(addr1333);
                                                }
                                                §§goto(addr1329);
                                             }
                                             §§goto(addr1312);
                                          }
                                       }
                                       §§goto(addr1304);
                                    }
                                    §§goto(addr1333);
                              }
                              return;
                              addr1890:
                           }
                        }
                        else
                        {
                           addr1852:
                           §§push(1);
                           if(_loc18_ && _loc2_)
                           {
                              addr1880:
                              if(§§pop() === _loc17_)
                              {
                                 addr1882:
                                 §§push(2);
                                 if(!_loc19_)
                                 {
                                 }
                                 §§goto(addr1890);
                              }
                              else
                              {
                                 §§goto(addr1890);
                                 §§push(3);
                              }
                           }
                        }
                        §§goto(addr1890);
                     }
                     else
                     {
                        §§push(b2Manifold.§;1§);
                        if(!(_loc18_ && this))
                        {
                           §§push(_loc17_);
                           if(_loc19_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc18_ && _loc2_))
                                 {
                                    §§goto(addr1852);
                                 }
                                 §§goto(addr1882);
                              }
                              else
                              {
                                 §§push(b2Manifold.§#[§);
                                 if(_loc19_ || _loc3_)
                                 {
                                    §§goto(addr1880);
                                 }
                              }
                           }
                           §§goto(addr1880);
                        }
                     }
                     §§goto(addr1890);
                  }
                  §§goto(addr1880);
               }
               §§goto(addr1890);
            }
            §§goto(addr1823);
         }
         §§goto(addr1891);
      }
   }
}
