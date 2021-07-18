package §69§
{
   import § G§.*;
   import §&!"§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §2!V§:b2Vec2;
      
      private static var §-!&§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2!V§ = new b2Vec2();
         }
         do
         {
            §-!&§ = new b2Vec2();
         }
         while(!_loc1_);
         
      }
      
      public var §@!Q§:b2Vec2;
      
      public var §+!S§:Vector.<b2Vec2>;
      
      public var §<C§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§@!Q§ = new b2Vec2();
            loop1:
            while(true)
            {
               addr38:
               addr76:
               while(true)
               {
                  this.§<C§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                  addr47:
                  while(!_loc2_)
                  {
                     continue loop0;
                  }
                  continue loop1;
               }
               var _loc1_:int = 0;
               addr79:
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  if(_loc2_ && _loc2_)
                  {
                     addr96:
                     if(!(_loc2_ && this))
                     {
                        §§goto(addr79);
                     }
                     _loc1_++;
                     §§goto(addr96);
                     addr122:
                  }
                  return;
               }
               this.§+!S§[_loc1_] = new b2Vec2();
               §§goto(addr122);
            }
         }
      }
      
      public function §1D§(param1:b2ContactConstraint) : void
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc2_:* = 0;
         var _loc3_:* = NaN;
         var _loc4_:Number = NaN;
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
         if(!_loc19_)
         {
            b2Settings.b2Assert(param1.§,!H§ > 0);
         }
         §§push(param1.type);
         if(!(_loc19_ && param1))
         {
            var _loc17_:* = §§pop();
            if(!_loc19_)
            {
               §§push(b2Manifold.§<'§);
               if(!_loc19_)
               {
                  §§push(_loc17_);
                  if(_loc18_ || param1)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc19_ && _loc2_))
                        {
                           §§push(0);
                           if(!_loc19_)
                           {
                              addr1890:
                              loop95:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = param1.§<§.m_xf.R;
                                    _loc6_ = param1.localPoint;
                                    if(_loc18_)
                                    {
                                       §§push(param1.§<§);
                                       if(!(_loc19_ && param1))
                                       {
                                          §§push(§§pop().m_xf);
                                          if(!(_loc19_ && param1))
                                          {
                                             §§push(§§pop().position);
                                             if(_loc18_ || _loc3_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc18_)
                                                {
                                                   §§push(_loc5_.col1);
                                                   if(!(_loc19_ && _loc3_))
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc19_ && _loc3_))
                                                      {
                                                         §§push(_loc6_.x);
                                                         if(_loc18_ || _loc3_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc19_ && _loc2_))
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
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(_loc18_)
                                                                           {
                                                                              addr154:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr160:
                                                                                    _loc9_ = §§pop();
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr165:
                                                                                       §§push(param1.§<§.m_xf);
                                                                                       if(_loc18_ || _loc3_)
                                                                                       {
                                                                                          addr174:
                                                                                          §§push(§§pop().position.y);
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr179:
                                                                                             §§push(_loc5_.col1.y);
                                                                                             if(!(_loc19_ && param1))
                                                                                             {
                                                                                                addr187:
                                                                                                §§push(_loc6_.x);
                                                                                                if(_loc18_ || _loc3_)
                                                                                                {
                                                                                                   addr218:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc18_ || _loc2_)
                                                                                                   {
                                                                                                      addr206:
                                                                                                      §§push(_loc5_.col2.y);
                                                                                                      if(!(_loc19_ && param1))
                                                                                                      {
                                                                                                         addr214:
                                                                                                         §§push(§§pop() * _loc6_.y);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      addr222:
                                                                                                      _loc10_ = §§pop();
                                                                                                      _loc5_ = param1.§,!M§.m_xf.R;
                                                                                                      _loc6_ = param1.§=R§[0].localPoint;
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(param1.§,!M§);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().m_xf);
                                                                                                            addr665:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().position);
                                                                                                               addr666:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr667:
                                                                                                                  loop3:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.col1);
                                                                                                                     loop4:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        loop5:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           if(!(_loc19_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 loop6:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr690:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          addr645:
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          if(!(_loc18_ || _loc2_))
                                                                                                                                          {
                                                                                                                                             continue;
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
                                                                                                                                                loop19:
                                                                                                                                                while(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                   loop20:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      _loc12_ = §§pop();
                                                                                                                                                      loop21:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc11_);
                                                                                                                                                         loop22:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc9_);
                                                                                                                                                            loop23:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                               loop24:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop25:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc13_ = §§pop();
                                                                                                                                                                     loop26:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc10_);
                                                                                                                                                                           addr543:
                                                                                                                                                                           while(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr545:
                                                                                                                                                                              if(!(_loc19_ && _loc2_))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 continue loop20;
                                                                                                                                                                              }
                                                                                                                                                                              addr623:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                 addr625:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    addr626:
                                                                                                                                                                                    while(!(_loc19_ && _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop6;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop5;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr545);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           continue loop18;
                                                                                                                                                                           loop33:
                                                                                                                                                                           while(_loc18_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop19;
                                                                                                                                                                              }
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                 while(!(_loc19_ && param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§@!Q§);
                                                                                                                                                                                    loop35:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                       loop36:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                          loop37:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                             loop38:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                loop39:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§@!Q§);
                                                                                                                                                                                                      loop40:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                         loop41:
                                                                                                                                                                                                         for(; !_loc19_; §§push(0),if(!(_loc18_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         },§§pop().y = §§pop(),§§goto(addr342))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc18_ || this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop36;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§pop().y = §§pop();
                                                                                                                                                                                                            loop42:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop43:
                                                                                                                                                                                                               do
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  this.§+!S§[0].x = 0.5 * (_loc9_ + _loc11_);
                                                                                                                                                                                                                  while(_loc18_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§+!S§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                                                        continue loop42;
                                                                                                                                                                                                                        addr265:
                                                                                                                                                                                                                        if(_loc19_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break loop95;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr342:
                                                                                                                                                                                                                  loop47:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc19_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop43;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     loop48:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(this.§@!Q§);
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop47;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr357:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              break loop48;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop48;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop35;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop41;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(!_loc19_);
                                                                                                                                                                                                               
                                                                                                                                                                                                               addr569:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc14_);
                                                                                                                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                 if(!_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr437:
                                                                                                                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr449:
                                                                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc19_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop33;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr466:
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop25;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop22;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(_loc19_ && param1)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr488:
                                                                                                                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                                                                                                                      if(!(_loc18_ || this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr508:
                                                                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc19_ && param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break loop39;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr509:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr357);
                                                                                                                                                                                                                                                      §§push(this.§@!Q§);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop20;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr508);
                                                                                                                                                                                                                                                §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr691:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                   addr692:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      addr693:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc11_ = §§pop();
                                                                                                                                                                                                                                                         break loop39;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr691:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr626);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr488);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr625);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr645);
                                                                                                                                                                                                                                       §§goto(addr437);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr690);
                                                                                                                                                                                                                                    addr643:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr691);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr543);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr449);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr693);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr508);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr466);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop37;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr509);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop0;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc19_ && _loc2_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc18_ || _loc2_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop21;
                                                                                                                                                                                    }
                                                                                                                                                                                    this.§<C§[0] = _loc13_ * this.§@!Q§.x + _loc14_ * this.§@!Q§.y - param1.radius;
                                                                                                                                                                                    if(_loc18_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr265);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr280);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop26;
                                                                                                                                                                              }
                                                                                                                                                                              addr606:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.col1);
                                                                                                                                                                                    if(!(_loc18_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr623);
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop4;
                                                                                                                                                                              §§goto(addr692);
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
                                                                                                                                                continue loop3;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr690);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr691);
                                                                                                                           }
                                                                                                                           §§goto(addr690);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr569);
                                                                                                   }
                                                                                                   §§goto(addr222);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr218);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr222);
                                                                              }
                                                                              §§goto(addr160);
                                                                           }
                                                                           §§goto(addr187);
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr218);
                                                      }
                                                      §§goto(addr154);
                                                   }
                                                }
                                                §§goto(addr179);
                                             }
                                          }
                                          §§goto(addr174);
                                       }
                                       §§goto(addr165);
                                    }
                                    §§goto(addr222);
                                 case 1:
                                    §§goto(addr700);
                                 case 2:
                                    _loc5_ = param1.§,!M§.m_xf.R;
                                    _loc6_ = param1.§#J§;
                                    §§push(param1.§<§.m_xf);
                                    if(_loc18_ || this)
                                    {
                                       §§push(this.§@!Q§);
                                       if(!_loc19_)
                                       {
                                          §§push(_loc5_.col1);
                                          if(!_loc19_)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc18_ || _loc2_)
                                             {
                                                §§push(_loc6_.x);
                                                if(!(_loc19_ && _loc3_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc18_ || _loc2_)
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
                                                               if(_loc18_ || _loc2_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(!_loc19_)
                                                                     {
                                                                        addr1298:
                                                                        §§push(this.§@!Q§);
                                                                        §§push(_loc5_.col1.y);
                                                                        if(!(_loc19_ && param1))
                                                                        {
                                                                           addr1306:
                                                                           §§push(_loc6_.x);
                                                                           if(!(_loc19_ && this))
                                                                           {
                                                                              addr1315:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 addr1325:
                                                                                 §§push(_loc5_.col2.y);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr1332:
                                                                                    §§pop().y = §§pop() + §§pop() * _loc6_.y;
                                                                                    addr1331:
                                                                                 }
                                                                                 §§goto(addr1331);
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1332);
                                                                     }
                                                                     _loc5_ = param1.§,!M§.m_xf.R;
                                                                     _loc6_ = param1.localPoint;
                                                                     if(_loc18_)
                                                                     {
                                                                        §§push(param1.§,!M§);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop().m_xf);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(§§pop().position);
                                                                              if(!_loc19_)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(_loc5_.col1);
                                                                                    if(_loc18_ || _loc3_)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc18_ || _loc3_)
                                                                                       {
                                                                                          §§push(_loc6_.x);
                                                                                          if(_loc18_ || _loc3_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(_loc5_.col2);
                                                                                                if(_loc18_ || _loc3_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!(_loc19_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr1417:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(!(_loc19_ && _loc2_))
                                                                                                                  {
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     if(!(_loc19_ && this))
                                                                                                                     {
                                                                                                                        addr1435:
                                                                                                                        §§push(param1.§,!M§.m_xf);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           addr1439:
                                                                                                                           §§push(§§pop().position.y);
                                                                                                                           if(_loc18_ || _loc3_)
                                                                                                                           {
                                                                                                                              addr1447:
                                                                                                                              §§push(_loc5_.col1.y);
                                                                                                                              if(_loc18_ || _loc3_)
                                                                                                                              {
                                                                                                                                 addr1457:
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    addr1466:
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!(_loc19_ && param1))
                                                                                                                                    {
                                                                                                                                       addr1474:
                                                                                                                                       §§push(_loc5_.col2.y);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          addr1482:
                                                                                                                                          §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1482);
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    addr1487:
                                                                                                                                    _loc8_ = §§pop();
                                                                                                                                    addr1491:
                                                                                                                                    _loc5_ = param1.§<§.m_xf.R;
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                       {
                                                                                                                                          _loc2_ = §§pop();
                                                                                                                                          if(_loc18_ || param1)
                                                                                                                                          {
                                                                                                                                             addr1512:
                                                                                                                                             loop94:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc2_);
                                                                                                                                                addr1727:
                                                                                                                                                while(§§pop() < param1.§,!H§)
                                                                                                                                                {
                                                                                                                                                   _loc6_ = param1.§=R§[_loc2_].localPoint;
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      §§push(param1.§<§);
                                                                                                                                                      loop75:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().m_xf);
                                                                                                                                                         addr1705:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().position);
                                                                                                                                                            addr1706:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               addr1707:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_.col1);
                                                                                                                                                                  addr1709:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     addr1710:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc6_.x);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_.col2);
                                                                                                                                                                              addr1717:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           addr1715:
                                                                                                                                                                        }
                                                                                                                                                                        addr1718:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc6_.y);
                                                                                                                                                                           addr1720:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              addr1721:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 addr1722:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    addr1723:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr1724:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc3_ = §§pop();
                                                                                                                                                                                          continue loop75;
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
                                                                                                                                                   §§goto(addr1701);
                                                                                                                                                   continue loop94;
                                                                                                                                                }
                                                                                                                                                if(_loc18_ || _loc2_)
                                                                                                                                                {
                                                                                                                                                   §§push(this.§@!Q§);
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(this.§@!Q§);
                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(-1);
                                                                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(_loc18_ || _loc3_)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  if(!(_loc19_ && _loc2_))
                                                                                                                                                                  {
                                                                                                                                                                     addr1781:
                                                                                                                                                                     §§push(this.§@!Q§);
                                                                                                                                                                     §§push(this.§@!Q§.y);
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1784:
                                                                                                                                                                        §§push(§§pop() * -1);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                  }
                                                                                                                                                                  break loop95;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1784);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1781);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr1781);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1727);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1512);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1482);
                                                                                                                              }
                                                                                                                              §§goto(addr1474);
                                                                                                                           }
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1491);
                                                                                                                  }
                                                                                                                  §§goto(addr1487);
                                                                                                               }
                                                                                                               §§goto(addr1447);
                                                                                                            }
                                                                                                            §§goto(addr1474);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1482);
                                                                                                   }
                                                                                                   §§goto(addr1466);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1474);
                                                                                          }
                                                                                          §§goto(addr1466);
                                                                                       }
                                                                                       §§goto(addr1457);
                                                                                    }
                                                                                    §§goto(addr1447);
                                                                                 }
                                                                                 §§goto(addr1417);
                                                                              }
                                                                              §§goto(addr1439);
                                                                           }
                                                                           §§goto(addr1466);
                                                                        }
                                                                        §§goto(addr1435);
                                                                     }
                                                                     §§goto(addr1466);
                                                                  }
                                                                  §§goto(addr1306);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr1332);
                                                      }
                                                      §§goto(addr1325);
                                                   }
                                                   §§goto(addr1332);
                                                }
                                                §§goto(addr1315);
                                             }
                                             §§goto(addr1325);
                                          }
                                       }
                                    }
                                    §§goto(addr1298);
                              }
                              return;
                              addr1889:
                           }
                           else
                           {
                              addr1854:
                              §§goto(addr1889);
                           }
                        }
                        §§goto(addr1889);
                     }
                     else
                     {
                        §§push(b2Manifold.§-b§);
                        if(!_loc19_)
                        {
                           §§push(_loc17_);
                           if(!(_loc19_ && _loc2_))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(_loc18_ || _loc2_)
                                 {
                                    addr1846:
                                    §§push(1);
                                    if(_loc18_ || _loc2_)
                                    {
                                       §§goto(addr1854);
                                    }
                                    else
                                    {
                                       addr1884:
                                       §§goto(addr1889);
                                    }
                                 }
                                 else
                                 {
                                    addr1866:
                                    §§push(2);
                                    if(!(_loc19_ && param1))
                                    {
                                       §§goto(addr1884);
                                    }
                                    §§goto(addr1889);
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§3D§);
                                 if(_loc19_ && this)
                                 {
                                 }
                              }
                              §§goto(addr1889);
                           }
                           addr1865:
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr1866);
                           }
                           else
                           {
                              §§goto(addr1889);
                              §§push(3);
                           }
                           §§goto(addr1889);
                        }
                        §§goto(addr1865);
                        §§push(_loc17_);
                     }
                     §§goto(addr1866);
                  }
                  §§goto(addr1865);
               }
               §§goto(addr1889);
            }
            §§goto(addr1846);
         }
         §§goto(addr1890);
      }
   }
}
