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
         if(!(_loc1_ && _loc2_))
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
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_ || _loc3_)
         {
            super();
            while(true)
            {
               this.§6!P§ = new b2Vec2();
            }
            addr74:
         }
         loop1:
         while(true)
         {
            addr37:
            addr75:
            addr113:
            while(true)
            {
               this.§`=§ = new Vector.<Number>(b2Settings.b2_maxManifoldPoints);
               continue loop1;
            }
            var _loc1_:int = 0;
            while(true)
            {
               if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
               {
                  if(!(_loc2_ || this))
                  {
                     continue;
                  }
                  if(!(_loc3_ && _loc2_))
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
            return;
         }
      }
      
      public function §`!D§(param1:b2ContactConstraint) : void
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
         if(_loc18_)
         {
            b2Settings.b2Assert(param1.§%!3§ > 0);
         }
         §§push(param1.type);
         if(!(_loc19_ && _loc2_))
         {
            var _loc17_:* = §§pop();
            if(_loc18_ || this)
            {
               §§push(b2Manifold.§+!,§);
               if(_loc18_)
               {
                  §§push(_loc17_);
                  if(_loc18_ || _loc2_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc19_ && _loc2_))
                        {
                           §§push(0);
                           if(!_loc19_)
                           {
                              addr1890:
                              loop93:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc5_ = param1.§19§.m_xf.R;
                                    _loc6_ = param1.localPoint;
                                    if(!_loc19_)
                                    {
                                       §§push(param1.§19§);
                                       if(_loc18_ || param1)
                                       {
                                          §§push(§§pop().m_xf);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop().position);
                                             if(_loc18_)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc19_ && param1))
                                                {
                                                   §§push(_loc5_.col1);
                                                   if(!_loc19_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc19_ && this))
                                                      {
                                                         §§push(_loc6_.x);
                                                         if(!_loc19_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc18_)
                                                            {
                                                               §§push(_loc5_.col2);
                                                               if(_loc18_ || _loc3_)
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
                                                                           addr136:
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 if(_loc18_ || this)
                                                                                 {
                                                                                    addr150:
                                                                                    _loc9_ = §§pop();
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr155:
                                                                                       §§push(param1.§19§.m_xf);
                                                                                       if(_loc18_ || this)
                                                                                       {
                                                                                          addr164:
                                                                                          §§push(§§pop().position.y);
                                                                                          if(_loc18_ || this)
                                                                                          {
                                                                                             addr172:
                                                                                             §§push(_loc5_.col1.y);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                addr177:
                                                                                                §§push(_loc6_.x);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   addr203:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(!(_loc19_ && this))
                                                                                                   {
                                                                                                      addr191:
                                                                                                      §§push(_loc5_.col2.y);
                                                                                                      if(!(_loc19_ && _loc2_))
                                                                                                      {
                                                                                                         addr199:
                                                                                                         §§push(§§pop() * _loc6_.y);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      addr207:
                                                                                                      _loc10_ = §§pop();
                                                                                                      _loc5_ = param1.§"@§.m_xf.R;
                                                                                                      _loc6_ = param1.§+"§[0].localPoint;
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(param1.§"@§);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().m_xf);
                                                                                                            if(!(_loc19_ && _loc2_))
                                                                                                            {
                                                                                                               §§push(§§pop().position);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr656:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.col1);
                                                                                                                     addr658:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr659:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc6_.x);
                                                                                                                           addr661:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr662:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 addr664:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       addr669:
                                                                                                                                    }
                                                                                                                                    addr670:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       addr671:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr672:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr673:
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
                                                                                                               addr655:
                                                                                                            }
                                                                                                            else
                                                                                                            {
                                                                                                               addr680:
                                                                                                               _loc5_ = §§pop().R;
                                                                                                               _loc6_ = param1.§8!9§;
                                                                                                               if(!(_loc19_ && _loc2_))
                                                                                                               {
                                                                                                                  §§push(this.§6!P§);
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.col1);
                                                                                                                     if(_loc18_ || param1)
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
                                                                                                                                 addr727:
                                                                                                                                 §§push(_loc5_.col2);
                                                                                                                                 if(!(_loc19_ && _loc2_))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    if(!_loc19_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc18_ || param1)
                                                                                                                                             {
                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                if(!(_loc19_ && _loc2_))
                                                                                                                                                {
                                                                                                                                                   addr776:
                                                                                                                                                   §§push(this.§6!P§);
                                                                                                                                                   §§push(_loc5_.col1.y);
                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                   {
                                                                                                                                                      addr784:
                                                                                                                                                      §§push(_loc6_.x);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr796:
                                                                                                                                                            §§push(_loc5_.col2.y);
                                                                                                                                                            if(_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr804:
                                                                                                                                                               §§push(§§pop() + §§pop() * _loc6_.y);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr804);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr804);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr796);
                                                                                                                                                }
                                                                                                                                                _loc5_ = param1.§19§.m_xf.R;
                                                                                                                                                _loc6_ = param1.localPoint;
                                                                                                                                                if(!(_loc19_ && this))
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§19§);
                                                                                                                                                   if(_loc18_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().m_xf);
                                                                                                                                                      if(!(_loc19_ && _loc3_))
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop().position);
                                                                                                                                                         if(!(_loc19_ && param1))
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop().x);
                                                                                                                                                            if(!_loc19_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc5_.col1);
                                                                                                                                                               if(!(_loc19_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  if(!(_loc19_ && this))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_.x);
                                                                                                                                                                     if(_loc18_ || _loc2_)
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
                                                                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(!_loc19_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr907:
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          if(!(_loc19_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                             if(!_loc19_)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc7_ = §§pop();
                                                                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr928:
                                                                                                                                                                                                   §§push(param1.§19§.m_xf);
                                                                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr947:
                                                                                                                                                                                                      §§push(§§pop().position.y);
                                                                                                                                                                                                      if(!_loc19_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr952:
                                                                                                                                                                                                         §§push(_loc5_.col1.y);
                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr955:
                                                                                                                                                                                                            §§push(_loc6_.x);
                                                                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                               if(_loc18_ || _loc2_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr974:
                                                                                                                                                                                                                  §§push(_loc5_.col2.y);
                                                                                                                                                                                                                  if(!_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr981:
                                                                                                                                                                                                                  §§push(§§pop() + (§§pop() + §§pop()));
                                                                                                                                                                                                                  if(!(_loc19_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr990:
                                                                                                                                                                                                                     _loc8_ = §§pop();
                                                                                                                                                                                                                     _loc5_ = param1.§"@§.m_xf.R;
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(0);
                                                                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc2_ = §§pop();
                                                                                                                                                                                                                           if(_loc18_ || this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc2_);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1223:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr1227:
                                                                                                                                                                                                                           break loop93;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop53:
                                                                                                                                                                                                                        for(; §§pop() < param1.§%!3§; §§goto(addr1223))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc6_ = param1.§+"§[_loc2_].localPoint;
                                                                                                                                                                                                                           if(_loc18_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.§"@§);
                                                                                                                                                                                                                              loop54:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().m_xf);
                                                                                                                                                                                                                                 addr1181:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().position);
                                                                                                                                                                                                                                    addr1182:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                                                                       if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc5_.col1);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                                                                             addr1193:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc5_.col2);
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                         if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc6_.y);
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               addr1218:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr1217:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1218);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1207:
                                                                                                                                                                                                                                                   }
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
                                                                                                                                                                                                                                                            continue loop54;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1219:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1218);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr1192:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1220);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr1180:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop65:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.§"@§);
                                                                                                                                                                                                                              if(!(_loc19_ && this))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().m_xf);
                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop().position);
                                                                                                                                                                                                                                    if(!_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc5_.col1);
                                                                                                                                                                                                                                          if(!_loc19_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                                                                             if(!(_loc19_ && _loc2_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc6_.x);
                                                                                                                                                                                                                                                if(!_loc19_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc5_.col2);
                                                                                                                                                                                                                                                      if(_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().y);
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr1146:
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc6_.y);
                                                                                                                                                                                                                                                               if(!_loc19_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr1153:
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                  if(!_loc19_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr1169:
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              if(_loc18_ || _loc2_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                 loop66:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    this.§`=§[_loc2_] = (_loc3_ - _loc7_) * this.§6!P§.x + (_loc4_ - _loc8_) * this.§6!P§.y - param1.radius;
                                                                                                                                                                                                                                                                                    loop67:
                                                                                                                                                                                                                                                                                    for(; !(_loc19_ && _loc3_); if(!(_loc19_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                                                                                                                    })
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       this.§ !C§[_loc2_].x = _loc3_;
                                                                                                                                                                                                                                                                                       loop68:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr1054:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             this.§ !C§[_loc2_].y = _loc4_;
                                                                                                                                                                                                                                                                                             do
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc2_++;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(!_loc18_);
                                                                                                                                                                                                                                                                                             
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop67;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop68;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop67;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop65;
                                                                                                                                                                                                                                                                                    if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop53;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr1054);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr1220);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1221);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1169);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr1193);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1219);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr1217);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1218);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1153);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1207);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1153);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1146);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1153);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr1192);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1169);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr1182);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr1181);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1182);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr1180);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1227);
                                                                                                                                                                                                                     addr989:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr990);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr981);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr979:
                                                                                                                                                                                                            §§goto(addr981);
                                                                                                                                                                                                            §§push(§§pop() * _loc6_.y);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr981);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr990);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr989);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr981);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr979);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr981);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr974);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr955);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr974);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr907);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr952);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr947);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr990);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr928);
                                                                                                                                                }
                                                                                                                                                §§goto(addr990);
                                                                                                                                             }
                                                                                                                                             §§goto(addr784);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr804);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr796);
                                                                                                                           }
                                                                                                                           §§goto(addr804);
                                                                                                                        }
                                                                                                                        §§goto(addr727);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr776);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr399);
                                                                                                      addr206:
                                                                                                   }
                                                                                                   §§goto(addr207);
                                                                                                }
                                                                                                §§push(§§pop() + §§pop());
                                                                                             }
                                                                                             §§goto(addr203);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr207);
                                                                                 }
                                                                                 §§goto(addr206);
                                                                              }
                                                                              §§goto(addr172);
                                                                           }
                                                                           §§goto(addr177);
                                                                        }
                                                                     }
                                                                     §§goto(addr199);
                                                                  }
                                                                  §§goto(addr136);
                                                               }
                                                            }
                                                            §§goto(addr191);
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      §§goto(addr177);
                                                   }
                                                   §§goto(addr172);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr164);
                                          }
                                          §§goto(addr207);
                                       }
                                    }
                                    §§goto(addr155);
                                 case 1:
                                    §§goto(addr680);
                                 case 2:
                                    _loc5_ = param1.§"@§.m_xf.R;
                                    _loc6_ = param1.§8!9§;
                                    §§push(param1.§19§.m_xf);
                                    if(!(_loc19_ && _loc2_))
                                    {
                                       §§push(this.§6!P§);
                                       if(_loc18_)
                                       {
                                          §§push(_loc5_.col1);
                                          if(_loc18_)
                                          {
                                             §§push(§§pop().x);
                                             if(!(_loc19_ && _loc2_))
                                             {
                                                §§push(_loc6_.x);
                                                if(_loc18_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc18_ || this)
                                                   {
                                                      §§push(_loc5_.col2);
                                                      if(_loc18_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(!(_loc19_ && _loc2_))
                                                         {
                                                            §§push(_loc6_.y);
                                                            if(!_loc19_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc18_)
                                                               {
                                                                  addr1298:
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc19_ && _loc2_))
                                                                  {
                                                                     §§pop().x = §§pop();
                                                                     if(_loc18_ || this)
                                                                     {
                                                                        addr1318:
                                                                        §§push(this.§6!P§);
                                                                        §§push(_loc5_.col1.y);
                                                                        if(_loc18_ || _loc3_)
                                                                        {
                                                                           §§push(_loc6_.x);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc18_)
                                                                              {
                                                                                 addr1333:
                                                                                 addr1335:
                                                                                 §§push(_loc5_.col2.y);
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                 }
                                                                                 addr1342:
                                                                                 §§pop().y = §§pop() + §§pop();
                                                                                 _loc5_ = param1.§"@§.m_xf.R;
                                                                                 _loc6_ = param1.localPoint;
                                                                                 if(_loc18_ || _loc3_)
                                                                                 {
                                                                                    §§push(param1.§"@§);
                                                                                    if(!_loc19_)
                                                                                    {
                                                                                       §§push(§§pop().m_xf);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop().position);
                                                                                          if(_loc18_ || param1)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc19_)
                                                                                             {
                                                                                                §§push(_loc5_.col1);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc18_ || this)
                                                                                                   {
                                                                                                      §§push(_loc6_.x);
                                                                                                      if(_loc18_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc18_ || _loc3_)
                                                                                                         {
                                                                                                            §§push(_loc5_.col2);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               if(_loc18_ || _loc3_)
                                                                                                               {
                                                                                                                  §§push(_loc6_.y);
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc18_ || _loc2_)
                                                                                                                        {
                                                                                                                           addr1434:
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(_loc18_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              if(!_loc19_)
                                                                                                                              {
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                                 if(!(_loc19_ && this))
                                                                                                                                 {
                                                                                                                                    addr1450:
                                                                                                                                    §§push(param1.§"@§.m_xf);
                                                                                                                                    if(_loc18_)
                                                                                                                                    {
                                                                                                                                       addr1454:
                                                                                                                                       §§push(§§pop().position.y);
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          addr1459:
                                                                                                                                          §§push(_loc5_.col1.y);
                                                                                                                                          if(_loc18_ || _loc2_)
                                                                                                                                          {
                                                                                                                                             addr1467:
                                                                                                                                             §§push(_loc6_.x);
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                addr1488:
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   addr1474:
                                                                                                                                                   §§push(_loc5_.col2.y);
                                                                                                                                                   if(!(_loc19_ && param1))
                                                                                                                                                   {
                                                                                                                                                      addr1484:
                                                                                                                                                      §§push(§§pop() * _loc6_.y);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(_loc18_ || this)
                                                                                                                                                {
                                                                                                                                                   addr1497:
                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                   _loc5_ = param1.§19§.m_xf.R;
                                                                                                                                                   if(_loc18_)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      if(!_loc19_)
                                                                                                                                                      {
                                                                                                                                                         _loc2_ = §§pop();
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc2_);
                                                                                                                                                            }
                                                                                                                                                            addr1726:
                                                                                                                                                         }
                                                                                                                                                         addr1787:
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      while(§§pop() < param1.§%!3§)
                                                                                                                                                      {
                                                                                                                                                         _loc6_ = param1.§+"§[_loc2_].localPoint;
                                                                                                                                                         if(!(_loc19_ && _loc2_))
                                                                                                                                                         {
                                                                                                                                                            §§push(param1.§19§);
                                                                                                                                                            loop73:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().m_xf);
                                                                                                                                                               addr1693:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().position);
                                                                                                                                                                  addr1694:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                     if(!(_loc19_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc5_.col1);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop().x);
                                                                                                                                                                           addr1705:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc6_.x);
                                                                                                                                                                              addr1707:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 addr1708:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc5_.col2);
                                                                                                                                                                                    addr1710:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       addr1711:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_.y);
                                                                                                                                                                                          addr1713:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             addr1714:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                addr1715:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   if(_loc18_ || this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1723:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr1723:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1724:
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
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr1704:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr1723);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1583);
                                                                                                                                                         §§goto(addr1726);
                                                                                                                                                      }
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§6!P§);
                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§6!P§);
                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().x);
                                                                                                                                                               if(!(_loc19_ && _loc3_))
                                                                                                                                                               {
                                                                                                                                                                  §§push(-1);
                                                                                                                                                                  if(_loc18_ || _loc2_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     if(_loc18_ || _loc3_)
                                                                                                                                                                     {
                                                                                                                                                                        addr1774:
                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           addr1781:
                                                                                                                                                                           §§push(this.§6!P§);
                                                                                                                                                                           §§push(this.§6!P§.y);
                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              addr1785:
                                                                                                                                                                              §§push(§§pop() * -1);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr1787);
                                                                                                                                                                     }
                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                     §§goto(addr1787);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr1785);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr1774);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr1781);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr1787);
                                                                                                                                                   addr1496:
                                                                                                                                                }
                                                                                                                                                §§goto(addr1497);
                                                                                                                                             }
                                                                                                                                             §§goto(addr1488);
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                          §§goto(addr1474);
                                                                                                                                       }
                                                                                                                                       §§goto(addr1496);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr1497);
                                                                                                                        }
                                                                                                                        §§goto(addr1467);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr1484);
                                                                                                               }
                                                                                                               §§goto(addr1488);
                                                                                                            }
                                                                                                            §§goto(addr1474);
                                                                                                         }
                                                                                                         §§goto(addr1434);
                                                                                                      }
                                                                                                      §§goto(addr1484);
                                                                                                   }
                                                                                                   §§goto(addr1488);
                                                                                                }
                                                                                                §§goto(addr1459);
                                                                                             }
                                                                                             §§goto(addr1497);
                                                                                          }
                                                                                          §§goto(addr1454);
                                                                                       }
                                                                                       §§goto(addr1497);
                                                                                    }
                                                                                    §§goto(addr1450);
                                                                                 }
                                                                                 §§goto(addr1497);
                                                                                 addr1341:
                                                                              }
                                                                              §§goto(addr1342);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr1333);
                                                               }
                                                               §§push(_loc6_.y);
                                                            }
                                                            §§goto(addr1341);
                                                            §§push(§§pop() * §§pop());
                                                         }
                                                         §§goto(addr1298);
                                                      }
                                                      §§goto(addr1335);
                                                   }
                                                }
                                             }
                                             §§goto(addr1333);
                                          }
                                       }
                                       §§goto(addr1318);
                                    }
                                    §§goto(addr1333);
                              }
                              return;
                              addr1889:
                           }
                        }
                        else
                        {
                           addr1876:
                           §§push(2);
                           if(!(_loc19_ && _loc3_))
                           {
                              addr1884:
                           }
                        }
                        §§goto(addr1889);
                     }
                     else
                     {
                        §§push(b2Manifold.§-!-§);
                        if(!_loc19_)
                        {
                           §§push(_loc17_);
                           if(!(_loc19_ && this))
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!_loc19_)
                                 {
                                    §§push(1);
                                    if(_loc18_ || this)
                                    {
                                       addr1864:
                                    }
                                    §§goto(addr1889);
                                 }
                                 else
                                 {
                                    §§goto(addr1876);
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§3!J§);
                                 if(_loc18_ || _loc2_)
                                 {
                                    addr1875:
                                    if(§§pop() === _loc17_)
                                    {
                                       §§goto(addr1876);
                                    }
                                    else
                                    {
                                       §§goto(addr1889);
                                       §§push(3);
                                    }
                                    §§goto(addr1889);
                                 }
                              }
                              §§goto(addr1884);
                           }
                           §§goto(addr1875);
                        }
                     }
                     §§goto(addr1864);
                  }
                  §§goto(addr1875);
               }
               §§goto(addr1889);
            }
            §§goto(addr1876);
         }
         §§goto(addr1890);
      }
   }
}
