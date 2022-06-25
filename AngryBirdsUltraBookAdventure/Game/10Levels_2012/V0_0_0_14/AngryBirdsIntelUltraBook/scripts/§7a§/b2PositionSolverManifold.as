package §7a§
{
   import § D§.*;
   import §&!-§.*;
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   class b2PositionSolverManifold
   {
      
      private static var §9!O§:b2Vec2;
      
      private static var §2!&§:b2Vec2;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §9!O§ = new b2Vec2();
         }
         do
         {
            §2!&§ = new b2Vec2();
         }
         while(_loc1_);
         
      }
      
      public var §=![§:b2Vec2;
      
      public var §<8§:Vector.<b2Vec2>;
      
      public var §-&§:Vector.<Number>;
      
      function b2PositionSolverManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            super();
            while(true)
            {
               this.§=![§ = new b2Vec2();
               loop1:
               for(; !(_loc2_ && this); loop3:
               while(_loc3_ || _loc3_)
               {
                  while(true)
                  {
                     this.§<8§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                     if(!(_loc3_ || _loc3_))
                     {
                        continue loop3;
                     }
                     if(true)
                     {
                        break;
                     }
                     §§goto(addr38);
                  }
                  var _loc1_:int = 0;
                  while(true)
                  {
                     if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                     {
                        if(_loc3_)
                        {
                           break;
                        }
                        loop6:
                        while(_loc2_ && _loc2_)
                        {
                           while(true)
                           {
                              _loc1_++;
                              continue loop6;
                           }
                        }
                        continue;
                     }
                     this.§<8§[_loc1_] = new b2Vec2();
                     §§goto(addr122);
                  }
                  return;
               })
               {
                  while(true)
                  {
                     this.§-&§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
                     continue loop1;
                  }
               }
            }
         }
         §§goto(addr64);
      }
      
      public function §7R§(param1:b2ContactConstraint) : void
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
         if(_loc18_ || this)
         {
            b2Settings.b2Assert(param1.§6Y§ > 0);
         }
         §§push(param1.type);
         if(_loc18_)
         {
            var _loc17_:* = §§pop();
            if(!_loc19_)
            {
               §§push(b2Manifold.§,!y§);
               if(!_loc19_)
               {
                  §§push(_loc17_);
                  if(!(_loc19_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc19_)
                        {
                           §§push(0);
                           if(!_loc18_)
                           {
                              addr1780:
                              §§push(_loc17_);
                              if(_loc18_)
                              {
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc18_ || param1)
                                    {
                                       addr1801:
                                       §§push(1);
                                       if(_loc18_ || this)
                                       {
                                          addr1825:
                                          loop90:
                                          switch(§§pop())
                                          {
                                             case 0:
                                                _loc5_ = param1.§-!O§.m_xf.R;
                                                _loc6_ = param1.localPoint;
                                                if(_loc18_)
                                                {
                                                   §§push(param1.§-!O§);
                                                   if(_loc18_)
                                                   {
                                                      §§push(§§pop().m_xf);
                                                      if(_loc18_ || _loc3_)
                                                      {
                                                         §§push(§§pop().position);
                                                         if(_loc18_ || _loc2_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               §§push(_loc5_.col1);
                                                               if(_loc18_)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(_loc18_ || this)
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
                                                                              if(_loc18_ || _loc2_)
                                                                              {
                                                                                 §§push(_loc6_.y);
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr141:
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!(_loc19_ && _loc3_))
                                                                                       {
                                                                                          addr149:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc18_ || _loc2_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                _loc9_ = §§pop();
                                                                                                if(_loc18_)
                                                                                                {
                                                                                                   addr165:
                                                                                                   §§push(param1.§-!O§.m_xf);
                                                                                                   if(_loc18_ || _loc2_)
                                                                                                   {
                                                                                                      addr174:
                                                                                                      §§push(§§pop().position.y);
                                                                                                      if(!(_loc19_ && this))
                                                                                                      {
                                                                                                         addr182:
                                                                                                         §§push(_loc5_.col1.y);
                                                                                                         if(!(_loc19_ && param1))
                                                                                                         {
                                                                                                            addr192:
                                                                                                            §§push(_loc6_.x);
                                                                                                            if(!(_loc19_ && _loc3_))
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc19_ && this)
                                                                                                               {
                                                                                                               }
                                                                                                               addr223:
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr227:
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  _loc5_ = param1.§3!u§.m_xf.R;
                                                                                                                  _loc6_ = param1.§@a§[0].localPoint;
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(param1.§3!u§);
                                                                                                                     loop0:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().m_xf);
                                                                                                                        if(_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop().position);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop().x);
                                                                                                                              if(!(_loc19_ && _loc2_))
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col1);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr681:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       addr683:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr684:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.col2);
                                                                                                                                             addr686:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                addr687:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   addr689:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr690:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         addr691:
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
                                                                                                                                 }
                                                                                                                                 addr680:
                                                                                                                              }
                                                                                                                              addr692:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr693:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc11_ = §§pop();
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           addr670:
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr700:
                                                                                                                           _loc5_ = §§pop().R;
                                                                                                                           _loc6_ = param1.§^@§;
                                                                                                                           if(!(_loc19_ && _loc2_))
                                                                                                                           {
                                                                                                                              §§push(this.§=![§);
                                                                                                                              if(_loc18_ || param1)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col1);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.x);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc19_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(_loc5_.col2);
                                                                                                                                             if(!(_loc19_ && _loc2_))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         addr771:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!(_loc19_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr786:
                                                                                                                                                               §§push(this.§=![§);
                                                                                                                                                               §§push(_loc5_.col1.y);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_.x);
                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                  {
                                                                                                                                                                     addr815:
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        addr806:
                                                                                                                                                                        §§push(_loc5_.col2.y);
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr811:
                                                                                                                                                                           §§push(§§pop() * _loc6_.y);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     _loc5_ = param1.§-!O§.m_xf.R;
                                                                                                                                                                     _loc6_ = param1.localPoint;
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§-!O§);
                                                                                                                                                                        if(!_loc19_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().m_xf);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().position);
                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(!(_loc19_ && _loc2_))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.col1);
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_.col2);
                                                                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.y);
                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr899:
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            if(!(_loc19_ && this))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc7_ = §§pop();
                                                                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr933:
                                                                                                                                                                                                                        §§push(param1.§-!O§.m_xf);
                                                                                                                                                                                                                        if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr942:
                                                                                                                                                                                                                           §§push(§§pop().position.y);
                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr945:
                                                                                                                                                                                                                              §§push(_loc5_.col1.y);
                                                                                                                                                                                                                              if(_loc18_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                                                                                                                 if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr967:
                                                                                                                                                                                                                                       addr969:
                                                                                                                                                                                                                                       §§push(_loc5_.col2.y);
                                                                                                                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr981:
                                                                                                                                                                                                                                       §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr985:
                                                                                                                                                                                                                                          _loc8_ = §§pop();
                                                                                                                                                                                                                                          _loc5_ = param1.§3!u§.m_xf.R;
                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc2_ = §§pop();
                                                                                                                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc2_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1223:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1227:
                                                                                                                                                                                                                                                break loop90;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(§§pop() < param1.§6Y§)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc6_ = param1.§@a§[_loc2_].localPoint;
                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(param1.§3!u§);
                                                                                                                                                                                                                                                   loop50:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().m_xf);
                                                                                                                                                                                                                                                      addr1200:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().position);
                                                                                                                                                                                                                                                         addr1201:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                                                                                                                            addr1202:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc5_.col1);
                                                                                                                                                                                                                                                               addr1204:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                                                                                                                  addr1205:
                                                                                                                                                                                                                                                                  loop55:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                                                                                                                     loop56:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                        if(!_loc19_)
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
                                                                                                                                                                                                                                                                                    addr1161:
                                                                                                                                                                                                                                                                                    §§push(_loc6_.y);
                                                                                                                                                                                                                                                                                    if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr1171:
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1188:
                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                          if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                          while(_loc18_ || this)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§-&§[_loc2_] = (_loc3_ - _loc7_) * this.§=![§.x + (_loc4_ - _loc8_) * this.§=![§.y - param1.radius;
                                                                                                                                                                                                                                                                                             loop65:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                this.§<8§[_loc2_].x = _loc3_;
                                                                                                                                                                                                                                                                                                addr1049:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr1025:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      this.§<8§[_loc2_].y = _loc4_;
                                                                                                                                                                                                                                                                                                      continue loop65;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop50;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop55;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1218:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1142:
                                                                                                                                                                                                                                                                              §§push(_loc5_.col2);
                                                                                                                                                                                                                                                                              if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr1159:
                                                                                                                                                                                                                                                                                 if(_loc19_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop56;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1161);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1171);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr1219:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           addr1220:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              addr1221:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc3_ = §§pop();
                                                                                                                                                                                                                                                                                 continue loop50;
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
                                                                                                                                                                                                                                                §§goto(addr1073);
                                                                                                                                                                                                                                                §§goto(addr1223);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1227);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr985);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr981);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr979:
                                                                                                                                                                                                                                 §§goto(addr981);
                                                                                                                                                                                                                                 §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr967);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr985);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr945);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr967);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr979);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr899);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr969);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr967);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr899);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr967);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr945);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr942);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr933);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr985);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr815);
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr806);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr815);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr811);
                                                                                                                                                }
                                                                                                                                                §§goto(addr771);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          §§goto(addr806);
                                                                                                                                       }
                                                                                                                                       §§goto(addr771);
                                                                                                                                    }
                                                                                                                                    §§goto(addr806);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr786);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr548);
                                                                                                                  addr226:
                                                                                                               }
                                                                                                               §§goto(addr227);
                                                                                                            }
                                                                                                            addr219:
                                                                                                            §§goto(addr223);
                                                                                                            §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                         }
                                                                                                         §§push(_loc5_.col2.y);
                                                                                                         if(_loc19_ && this)
                                                                                                         {
                                                                                                         }
                                                                                                         §§goto(addr219);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr227);
                                                                                             }
                                                                                             §§goto(addr226);
                                                                                          }
                                                                                          §§goto(addr182);
                                                                                       }
                                                                                       §§goto(addr223);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr219);
                                                                           }
                                                                           §§goto(addr182);
                                                                        }
                                                                        §§goto(addr149);
                                                                     }
                                                                     §§goto(addr141);
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr182);
                                                            }
                                                            §§goto(addr227);
                                                         }
                                                         §§goto(addr174);
                                                      }
                                                      §§goto(addr227);
                                                   }
                                                }
                                                §§goto(addr165);
                                             case 1:
                                                §§goto(addr700);
                                             case 2:
                                                _loc5_ = param1.§3!u§.m_xf.R;
                                                _loc6_ = param1.§^@§;
                                                §§push(param1.§-!O§.m_xf);
                                                if(!(_loc19_ && _loc2_))
                                                {
                                                   §§push(this.§=![§);
                                                   if(_loc18_)
                                                   {
                                                      §§push(_loc5_.col1);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(_loc6_.x);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_)
                                                               {
                                                                  §§push(_loc5_.col2);
                                                                  if(!(_loc19_ && _loc3_))
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     if(!(_loc19_ && _loc2_))
                                                                     {
                                                                        §§push(_loc6_.y);
                                                                        if(_loc18_)
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc19_)
                                                                           {
                                                                              addr1288:
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_ || this)
                                                                              {
                                                                                 addr1296:
                                                                                 §§pop().x = §§pop();
                                                                                 if(!(_loc19_ && param1))
                                                                                 {
                                                                                    addr1308:
                                                                                    §§push(this.§=![§);
                                                                                    §§push(_loc5_.col1.y);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       addr1311:
                                                                                       §§push(_loc6_.x);
                                                                                       if(!(_loc19_ && param1))
                                                                                       {
                                                                                          addr1320:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             addr1323:
                                                                                             addr1325:
                                                                                             §§push(_loc5_.col2.y);
                                                                                             if(_loc19_)
                                                                                             {
                                                                                             }
                                                                                             addr1332:
                                                                                             §§pop().y = §§pop() + §§pop();
                                                                                             _loc5_ = param1.§3!u§.m_xf.R;
                                                                                             _loc6_ = param1.localPoint;
                                                                                             if(_loc18_ || this)
                                                                                             {
                                                                                                §§push(param1.§3!u§);
                                                                                                if(_loc18_)
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
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc18_ || param1)
                                                                                                                     {
                                                                                                                        §§push(_loc5_.col2);
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                           if(_loc18_ || _loc2_)
                                                                                                                           {
                                                                                                                              §§push(_loc6_.y);
                                                                                                                              if(_loc18_ || this)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc18_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       addr1434:
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(_loc18_ || _loc3_)
                                                                                                                                       {
                                                                                                                                          addr1442:
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                          {
                                                                                                                                             addr1450:
                                                                                                                                             _loc7_ = §§pop();
                                                                                                                                             if(!_loc19_)
                                                                                                                                             {
                                                                                                                                                addr1455:
                                                                                                                                                §§push(param1.§3!u§.m_xf);
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr1459:
                                                                                                                                                   §§push(§§pop().position.y);
                                                                                                                                                   if(!_loc19_)
                                                                                                                                                   {
                                                                                                                                                      addr1464:
                                                                                                                                                      §§push(_loc5_.col1.y);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc6_.x);
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            addr1471:
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc18_ || _loc3_)
                                                                                                                                                            {
                                                                                                                                                               addr1479:
                                                                                                                                                               §§push(_loc5_.col2.y);
                                                                                                                                                               if(!_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  addr1487:
                                                                                                                                                                  §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1487);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr1492:
                                                                                                                                                               _loc8_ = §§pop();
                                                                                                                                                               _loc5_ = param1.§-!O§.m_xf.R;
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(0);
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     _loc2_ = §§pop();
                                                                                                                                                                     if(!_loc19_)
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc2_);
                                                                                                                                                                        }
                                                                                                                                                                        addr1681:
                                                                                                                                                                     }
                                                                                                                                                                     addr1727:
                                                                                                                                                                     addr1741:
                                                                                                                                                                     addr1731:
                                                                                                                                                                     addr1729:
                                                                                                                                                                     §§push(this.§=![§);
                                                                                                                                                                     §§push(this.§=![§.y);
                                                                                                                                                                     if(_loc18_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr1739:
                                                                                                                                                                        §§push(§§pop() * -1);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  while(§§pop() < param1.§6Y§)
                                                                                                                                                                  {
                                                                                                                                                                     _loc6_ = param1.§@a§[_loc2_].localPoint;
                                                                                                                                                                     if(!(_loc19_ && _loc2_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§-!O§);
                                                                                                                                                                        loop71:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().m_xf);
                                                                                                                                                                           addr1658:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop().position);
                                                                                                                                                                              addr1659:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                 if(!_loc19_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.col1);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr1669:
                                                                                                                                                                                          §§push(_loc6_.x);
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             addr1670:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc5_.col2);
                                                                                                                                                                                                addr1672:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                   addr1673:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc6_.y);
                                                                                                                                                                                                      addr1675:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         addr1676:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr1669:
                                                                                                                                                                                       }
                                                                                                                                                                                       addr1677:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1664:
                                                                                                                                                                                 }
                                                                                                                                                                                 addr1678:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    addr1679:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc3_ = §§pop();
                                                                                                                                                                                       continue loop71;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1654);
                                                                                                                                                                     §§goto(addr1681);
                                                                                                                                                                  }
                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(this.§=![§);
                                                                                                                                                                     if(_loc18_ || _loc2_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§=![§);
                                                                                                                                                                        if(_loc18_ || _loc3_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(-1);
                                                                                                                                                                              if(_loc18_ || param1)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                    if(_loc19_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1727);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr1739);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1741);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1731);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1729);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1727);
                                                                                                                                                               addr1491:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr1492);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1487);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr1479);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr1492);
                                                                                                                                          }
                                                                                                                                          §§goto(addr1491);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1450);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1479);
                                                                                                                                 }
                                                                                                                                 §§goto(addr1471);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1487);
                                                                                                                        }
                                                                                                                        §§goto(addr1479);
                                                                                                                     }
                                                                                                                     §§goto(addr1434);
                                                                                                                  }
                                                                                                                  §§goto(addr1487);
                                                                                                               }
                                                                                                               §§goto(addr1434);
                                                                                                            }
                                                                                                            §§goto(addr1464);
                                                                                                         }
                                                                                                         §§goto(addr1442);
                                                                                                      }
                                                                                                      §§goto(addr1459);
                                                                                                   }
                                                                                                   §§goto(addr1492);
                                                                                                }
                                                                                                §§goto(addr1455);
                                                                                             }
                                                                                             §§goto(addr1492);
                                                                                             addr1331:
                                                                                          }
                                                                                          §§goto(addr1332);
                                                                                       }
                                                                                       §§goto(addr1331);
                                                                                       §§push(§§pop() * _loc6_.y);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1323);
                                                                              }
                                                                              §§goto(addr1311);
                                                                           }
                                                                           §§goto(addr1320);
                                                                        }
                                                                        §§goto(addr1311);
                                                                     }
                                                                     §§goto(addr1288);
                                                                  }
                                                                  §§goto(addr1325);
                                                               }
                                                               §§goto(addr1296);
                                                            }
                                                         }
                                                         §§goto(addr1323);
                                                      }
                                                   }
                                                }
                                                §§goto(addr1308);
                                          }
                                          return;
                                          addr1824:
                                       }
                                       else
                                       {
                                          addr1814:
                                          if(§§pop() !== _loc17_)
                                          {
                                             §§goto(addr1824);
                                             §§push(3);
                                          }
                                          §§goto(addr1824);
                                       }
                                       §§goto(addr1824);
                                    }
                                    §§push(2);
                                    if(_loc19_)
                                    {
                                    }
                                    §§goto(addr1824);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§6$§);
                                    if(!_loc19_)
                                    {
                                       §§goto(addr1814);
                                    }
                                 }
                              }
                              §§goto(addr1814);
                           }
                           §§goto(addr1824);
                        }
                        §§goto(addr1801);
                     }
                     else
                     {
                        §§push(b2Manifold.§@!`§);
                        if(_loc18_ || param1)
                        {
                           §§goto(addr1780);
                        }
                        §§goto(addr1814);
                     }
                  }
               }
               §§goto(addr1814);
            }
            §§goto(addr1801);
         }
         §§goto(addr1825);
      }
   }
}
