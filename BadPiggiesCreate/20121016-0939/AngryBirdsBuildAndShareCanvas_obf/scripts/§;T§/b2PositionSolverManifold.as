package §;T§
{
   import §+S§.*;
   import §2"=§.*;
   import §5!o§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §2"#§:b2Vec2;
      
      private static var §[!+§:b2Vec2;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §2"#§ = new b2Vec2();
         }
         do
         {
            §[!+§ = new b2Vec2();
         }
         while(!_loc1_);
         
      }
      
      public var §]!?§:b2Vec2;
      
      public var §5!'§:Vector.<b2Vec2>;
      
      public var §=!+§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            super();
         }
         loop0:
         while(true)
         {
            this.§]!?§ = new b2Vec2();
            while(true)
            {
               addr46:
               while(true)
               {
                  this.§=!+§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                  do
                  {
                     this.§5!'§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  }
                  while(!_loc2_);
                  
                  if(_loc3_ && _loc3_)
                  {
                     break;
                  }
                  continue loop0;
               }
            }
         }
      }
      
      public function §1o§(param1:b2ContactConstraint) : void
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
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         if(!(_loc19_ && _loc3_))
         {
            b2Settings.b2Assert(param1.§<"5§ > 0);
         }
         §§push(param1.type);
         if(!(_loc19_ && param1))
         {
            var _loc17_:* = §§pop();
            if(!(_loc19_ && this))
            {
               §§push(b2Manifold.§>§);
               if(_loc18_ || this)
               {
                  §§push(_loc17_);
                  if(_loc18_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc19_)
                        {
                           §§push(0);
                           if(!_loc18_)
                           {
                           }
                        }
                        else
                        {
                           addr1751:
                           §§push(2);
                           if(_loc19_ && _loc2_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Manifold.§1!0§);
                        if(_loc18_ || _loc2_)
                        {
                           §§push(_loc17_);
                           if(!_loc19_)
                           {
                              addr1738:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc18_)
                                 {
                                    §§push(1);
                                    if(_loc18_)
                                    {
                                       addr1775:
                                       loop92:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc5_ = param1.§@!<§.m_xf.R;
                                             _loc6_ = param1.localPoint;
                                             if(_loc18_)
                                             {
                                                §§push(param1.§@!<§);
                                                if(!_loc19_)
                                                {
                                                   §§push(§§pop().m_xf);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§§pop().position);
                                                      if(_loc18_ || this)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc19_ && _loc3_))
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
                                                                     if(!_loc19_)
                                                                     {
                                                                        §§push(_loc5_.col2);
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(_loc18_ || _loc3_)
                                                                           {
                                                                              §§push(_loc6_.y);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc18_ || param1)
                                                                                       {
                                                                                          addr157:
                                                                                          §§push(Number(§§pop()));
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             _loc9_ = §§pop();
                                                                                             if(_loc18_ || this)
                                                                                             {
                                                                                                addr170:
                                                                                                §§push(param1.§@!<§.m_xf);
                                                                                                if(_loc18_ || param1)
                                                                                                {
                                                                                                   addr179:
                                                                                                   §§push(§§pop().position.y);
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      addr187:
                                                                                                      §§push(_loc5_.col1.y);
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         §§push(_loc6_.x);
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                            }
                                                                                                            addr213:
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               addr217:
                                                                                                               _loc10_ = §§pop();
                                                                                                               _loc5_ = param1.§3j§.m_xf.R;
                                                                                                               _loc6_ = param1.§>"%§[0].localPoint;
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  §§push(param1.§3j§);
                                                                                                                  loop0:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().m_xf);
                                                                                                                     addr642:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().position);
                                                                                                                        addr643:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           addr644:
                                                                                                                           loop3:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.col1);
                                                                                                                              addr646:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc6_.x);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                    }
                                                                                                                                    addr651:
                                                                                                                                 }
                                                                                                                                 loop6:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc5_.col2);
                                                                                                                                    loop7:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop().x);
                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             loop16:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc6_.y);
                                                                                                                                                if(!(_loc18_ || _loc3_))
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop17:
                                                                                                                                                while(_loc18_ || _loc3_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   loop18:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      loop19:
                                                                                                                                                      while(_loc18_ || _loc2_)
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
                                                                                                                                                               while(!(_loc19_ && this))
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
                                                                                                                                                                        while(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           _loc13_ = §§pop();
                                                                                                                                                                           loop26:
                                                                                                                                                                           for(; _loc18_ || param1; if(_loc19_ && param1)
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           },this.§=!+§[0] = _loc13_ * this.§]!?§.x + _loc14_ * this.§]!?§.y - param1.radius,if(_loc18_ || _loc2_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr260);
                                                                                                                                                                           },§§goto(addr273))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc12_);
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc10_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() - §§pop());
                                                                                                                                                                                    addr446:
                                                                                                                                                                                    if(!(_loc18_ || _loc3_))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop23;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr458:
                                                                                                                                                                                       if(!(_loc19_ && _loc3_))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc18_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop25;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop22;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                             if(!(_loc19_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                addr485:
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop6;
                                                                                                                                                                                                }
                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop19;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr509:
                                                                                                                                                                                                      if(§§pop() > Number.MIN_VALUE * Number.MIN_VALUE)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop46:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(Math.sqrt(_loc15_)));
                                                                                                                                                                                                            addr514:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                                                                               addr515:
                                                                                                                                                                                                               loop48:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§]!?§);
                                                                                                                                                                                                                  loop43:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc13_);
                                                                                                                                                                                                                     loop44:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        loop41:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                           loop42:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§pop().x = §§pop();
                                                                                                                                                                                                                              loop39:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§]!?§);
                                                                                                                                                                                                                                 loop45:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc16_);
                                                                                                                                                                                                                                       if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    loop40:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!(_loc18_ || _loc2_))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop44;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr378:
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       while(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop39;
                                                                                                                                                                                                                                          §§goto(addr378);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       loop34:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§5!'§[0].x = 0.5 * (_loc9_ + _loc11_);
                                                                                                                                                                                                                                          addr305:
                                                                                                                                                                                                                                          addr327:
                                                                                                                                                                                                                                          loop35:
                                                                                                                                                                                                                                          while(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             do
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§5!'§[0].y = 0.5 * (_loc10_ + _loc12_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop26;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop46;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop48;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop35;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr379);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(false);
                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                             break loop92;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop34;
                                                                                                                                                                                                                                             §§goto(addr305);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          loop32:
                                                                                                                                                                                                                                          while(!(_loc19_ && _loc2_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr353:
                                                                                                                                                                                                                                             §§push(this.§]!?§);
                                                                                                                                                                                                                                             if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0);
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop40;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                §§goto(addr327);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§pop().x = 1;
                                                                                                                                                                                                                                                         continue loop32;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                                                                   §§goto(addr353);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr335:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr524:
                                                                                                                                                                                                                                          addr523:
                                                                                                                                                                                                                                          loop30:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc19_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc18_ || this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(_loc13_);
                                                                                                                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc19_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc14_);
                                                                                                                                                                                                                                                            if(!_loc19_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr429:
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop18;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop16;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr436:
                                                                                                                                                                                                                                                               if(_loc18_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr446);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr485);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr509);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               break loop30;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr522:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr458);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(!(_loc19_ && this))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         break loop22;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr666:
                                                                                                                                                                                                                                                      addr586:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc5_.col2);
                                                                                                                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().y);
                                                                                                                                                                                                                                                            continue loop16;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop7;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                                                                      §§goto(addr436);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr651);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr429);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr458);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc14_ = §§pop();
                                                                                                                                                                                                                                             §§goto(addr524);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr379:
                                                                                                                                                                                                                                       addr381:
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
                                                                                                                                                                                                      §§goto(addr335);
                                                                                                                                                                                                      §§push(this.§]!?§);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr523);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr514);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr509);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr514);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc11_ = §§pop();
                                                                                                                                                                                          break loop26;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr668:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr514);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr522);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop0;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop20;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr668);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop3;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§goto(addr666);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr665);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr515);
                                                                                                               addr216:
                                                                                                            }
                                                                                                            §§goto(addr217);
                                                                                                         }
                                                                                                         addr209:
                                                                                                         §§goto(addr213);
                                                                                                         §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                      }
                                                                                                      §§push(_loc5_.col2.y);
                                                                                                      if(!_loc18_)
                                                                                                      {
                                                                                                      }
                                                                                                      §§goto(addr209);
                                                                                                   }
                                                                                                   §§goto(addr216);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr217);
                                                                                       }
                                                                                       §§goto(addr187);
                                                                                    }
                                                                                    §§goto(addr213);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr209);
                                                                        }
                                                                        §§goto(addr187);
                                                                     }
                                                                     §§goto(addr213);
                                                                  }
                                                                  §§goto(addr209);
                                                               }
                                                               §§goto(addr213);
                                                            }
                                                            §§goto(addr187);
                                                         }
                                                         §§goto(addr157);
                                                      }
                                                      §§goto(addr179);
                                                   }
                                                   §§goto(addr217);
                                                }
                                                §§goto(addr170);
                                             }
                                             §§goto(addr217);
                                          case 1:
                                             §§goto(addr675);
                                          case 2:
                                             _loc5_ = param1.§3j§.m_xf.R;
                                             _loc6_ = param1.§ !Y§;
                                             §§push(param1.§@!<§.m_xf);
                                             if(!_loc19_)
                                             {
                                                §§push(this.§]!?§);
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc5_.col1);
                                                   if(_loc18_)
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
                                                                     if(!(_loc19_ && param1))
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§pop().x = §§pop();
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr1240:
                                                                                 §§push(this.§]!?§);
                                                                                 §§push(_loc5_.col1.y);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    addr1231:
                                                                                    §§push(_loc6_.x);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr1235:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc18_)
                                                                                       {
                                                                                       }
                                                                                       addr1252:
                                                                                       §§pop().y = §§pop();
                                                                                       _loc5_ = param1.§3j§.m_xf.R;
                                                                                       _loc6_ = param1.localPoint;
                                                                                       if(!(_loc19_ && _loc2_))
                                                                                       {
                                                                                          §§push(param1.§3j§);
                                                                                          if(_loc18_)
                                                                                          {
                                                                                             §§push(§§pop().m_xf);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(§§pop().position);
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc5_.col1);
                                                                                                      if(!(_loc19_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!(_loc19_ && this))
                                                                                                         {
                                                                                                            §§push(_loc6_.x);
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  §§push(_loc5_.col2);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(_loc18_)
                                                                                                                     {
                                                                                                                        addr1314:
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!_loc19_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc18_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 if(_loc18_)
                                                                                                                                 {
                                                                                                                                    addr1332:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc18_ || _loc3_)
                                                                                                                                    {
                                                                                                                                       _loc7_ = §§pop();
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          addr1350:
                                                                                                                                          §§push(param1.§3j§.m_xf);
                                                                                                                                          if(!_loc19_)
                                                                                                                                          {
                                                                                                                                             addr1354:
                                                                                                                                             §§push(§§pop().position.y);
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1357:
                                                                                                                                                §§push(_loc5_.col1.y);
                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr1371:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         addr1374:
                                                                                                                                                         §§push(_loc5_.col2.y);
                                                                                                                                                         if(_loc18_ || _loc3_)
                                                                                                                                                         {
                                                                                                                                                            addr1387:
                                                                                                                                                            §§push(§§pop() + (§§pop() + §§pop() * _loc6_.y));
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               addr1392:
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               §§push(param1.§@!<§.m_xf);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1392);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1387);
                                                                                                                                                }
                                                                                                                                                §§goto(addr1374);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1392);
                                                                                                                                          }
                                                                                                                                          _loc5_ = §§pop().R;
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(0);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   loop71:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                      addr1632:
                                                                                                                                                      loop72:
                                                                                                                                                      while(§§pop() < param1.§<"5§)
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = param1.§>"%§[_loc2_].localPoint;
                                                                                                                                                         if(_loc18_)
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§@!<§);
                                                                                                                                                            loop73:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().m_xf);
                                                                                                                                                               addr1598:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().position);
                                                                                                                                                                  addr1599:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     addr1600:
                                                                                                                                                                     loop76:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.col1);
                                                                                                                                                                        addr1602:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1603:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.x);
                                                                                                                                                                              loop79:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr1606:
                                                                                                                                                                                 loop80:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.col2);
                                                                                                                                                                                    addr1608:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             addr1553:
                                                                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                                                                             if(!(_loc18_ || _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(!(_loc18_ || this))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop79;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!(_loc19_ && _loc3_))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc19_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop80;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc19_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop76;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1586:
                                                                                                                                                                                                if(_loc18_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      this.§=!+§[_loc2_] = (_loc3_ - _loc7_) * this.§]!?§.x + (_loc4_ - _loc8_) * this.§]!?§.y - param1.radius;
                                                                                                                                                                                                      loop88:
                                                                                                                                                                                                      for(; !(_loc19_ && _loc2_); while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         this.§5!'§[_loc2_].Set(_loc3_,_loc4_);
                                                                                                                                                                                                         do
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc2_++;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(!_loc18_);
                                                                                                                                                                                                         
                                                                                                                                                                                                         if(!(_loc18_ || _loc2_))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(false)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop72;
                                                                                                                                                                                                      })
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc18_ || this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop73;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop88;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr1620:
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc3_ = §§pop();
                                                                                                                                                                                                continue loop73;
                                                                                                                                                                                                §§goto(addr1586);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1619:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr1620);
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
                                                                                                                                                         §§goto(addr1483);
                                                                                                                                                         continue loop71;
                                                                                                                                                      }
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§]!?§);
                                                                                                                                                         if(_loc18_ || _loc2_)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§]!?§);
                                                                                                                                                            if(_loc18_ || _loc2_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(_loc18_ || _loc2_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(-1);
                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1669:
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        if(!(_loc19_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           addr1681:
                                                                                                                                                                           addr1679:
                                                                                                                                                                           addr1677:
                                                                                                                                                                           §§push(this.§]!?§);
                                                                                                                                                                           §§push(this.§]!?§.y);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1684:
                                                                                                                                                                              §§push(§§pop() * -1);
                                                                                                                                                                           }
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           addr1687:
                                                                                                                                                                           break loop92;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1687);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1684);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1669);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1681);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1679);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr1677);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1632);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1681);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1392);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1357);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1392);
                                                                                                                              }
                                                                                                                              §§goto(addr1374);
                                                                                                                           }
                                                                                                                           §§goto(addr1371);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr1387);
                                                                                                                  }
                                                                                                                  §§goto(addr1374);
                                                                                                               }
                                                                                                               §§goto(addr1387);
                                                                                                            }
                                                                                                            §§goto(addr1314);
                                                                                                         }
                                                                                                         §§goto(addr1374);
                                                                                                      }
                                                                                                      §§goto(addr1357);
                                                                                                   }
                                                                                                   §§goto(addr1332);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr1354);
                                                                                          }
                                                                                          §§goto(addr1350);
                                                                                       }
                                                                                       §§goto(addr1392);
                                                                                    }
                                                                                    addr1248:
                                                                                    §§goto(addr1252);
                                                                                    §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                 }
                                                                                 §§push(_loc5_.col2.y);
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    §§goto(addr1248);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1252);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1231);
                                                               }
                                                               §§goto(addr1240);
                                                            }
                                                            §§goto(addr1231);
                                                         }
                                                      }
                                                      §§goto(addr1235);
                                                   }
                                                }
                                                §§goto(addr1240);
                                             }
                                             §§goto(addr1235);
                                       }
                                       return;
                                       addr1774:
                                       addr1744:
                                    }
                                    else
                                    {
                                       addr1749:
                                       §§push(_loc17_);
                                    }
                                    §§goto(addr1774);
                                 }
                                 §§goto(addr1751);
                              }
                              else
                              {
                                 §§push(b2Manifold.§7" §);
                                 if(_loc18_)
                                 {
                                    §§goto(addr1749);
                                 }
                                 §§goto(addr1774);
                              }
                           }
                           if(§§pop() === §§pop())
                           {
                              §§goto(addr1751);
                           }
                           else
                           {
                              §§goto(addr1774);
                              §§push(3);
                           }
                           §§goto(addr1774);
                        }
                        §§goto(addr1744);
                     }
                     §§goto(addr1774);
                  }
                  §§goto(addr1738);
               }
               §§goto(addr1749);
            }
            §§goto(addr1751);
         }
         §§goto(addr1775);
      }
   }
}
