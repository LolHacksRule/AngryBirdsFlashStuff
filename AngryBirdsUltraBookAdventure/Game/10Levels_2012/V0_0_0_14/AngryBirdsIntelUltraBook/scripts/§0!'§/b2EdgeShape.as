package §0!'§
{
   import §&!-§.b2AABB;
   import §&!-§.b2RayCastInput;
   import §&!-§.b2RayCastOutput;
   import §8>§.b2Mat22;
   import §8>§.b2Math;
   import §8>§.b2Transform;
   import §8>§.b2Vec2;
   import §;u§.b2Settings;
   import §;u§.b2internal;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §"H§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §!!d§:Number;
      
      b2internal var §=![§:b2Vec2;
      
      b2internal var §6!n§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §79§:b2EdgeShape;
      
      b2internal var §0[§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            this.§"H§ = new b2Vec2();
            while(true)
            {
               this.m_v1 = new b2Vec2();
               loop5:
               while(_loc4_ || param2)
               {
                  this.§6!n§ = new b2Vec2();
                  while(true)
                  {
                     this.m_cornerDir1 = new b2Vec2();
                     while(!_loc3_)
                     {
                        this.m_cornerDir2 = new b2Vec2();
                        loop8:
                        while(!_loc3_)
                        {
                           super();
                           loop9:
                           while(_loc4_ || param2)
                           {
                              §"!1§ = b2internal::<!o;
                              loop10:
                              while(true)
                              {
                                 this.§0[§ = null;
                                 loop11:
                                 while(true)
                                 {
                                    this.§79§ = null;
                                    addr402:
                                    loop12:
                                    for(; _loc4_ || this; loop18:
                                    for(; _loc4_ || this; while(true)
                                    {
                                       if(_loc3_ && this)
                                       {
                                          continue loop18;
                                       }
                                       §§goto(addr175);
                                    },continue loop9)
                                    {
                                       §§push(this.m_coreV2);
                                       §§push(b2Settings.b2_toiSlop);
                                       if(!(_loc3_ && _loc3_))
                                       {
                                          §§push(-§§pop());
                                          if(_loc4_)
                                          {
                                             §§push(this.§=![§.x);
                                             if(_loc4_ || this)
                                             {
                                                §§push(this.§6!n§.x);
                                                if(!(_loc3_ && _loc3_))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(_loc4_ || this)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc4_ || this)
                                                      {
                                                         addr121:
                                                         §§push(this.m_v2.x);
                                                         if(!(_loc3_ && _loc3_))
                                                         {
                                                            addr132:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(b2Settings.b2_toiSlop);
                                                            if(!_loc3_)
                                                            {
                                                               addr136:
                                                               §§push(-§§pop());
                                                               if(_loc4_ || param1)
                                                               {
                                                                  addr144:
                                                                  §§push(this.§=![§.y);
                                                                  if(_loc4_)
                                                                  {
                                                                     §§push(§§pop() + this.§6!n§.y);
                                                                     if(_loc4_ || param2)
                                                                     {
                                                                        addr167:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc4_)
                                                                        {
                                                                           addr163:
                                                                           §§push(this.m_v2.y);
                                                                        }
                                                                        §§pop().Set(§§pop(),§§pop());
                                                                        continue;
                                                                     }
                                                                  }
                                                                  §§goto(addr167);
                                                                  §§push(§§pop() + §§pop());
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr144);
                                                         }
                                                         §§goto(addr136);
                                                      }
                                                      §§goto(addr132);
                                                   }
                                                }
                                             }
                                             §§goto(addr167);
                                          }
                                          §§goto(addr121);
                                       }
                                       §§goto(addr132);
                                    })
                                    {
                                       this.m_v1 = param1;
                                       while(true)
                                       {
                                          this.m_v2 = param2;
                                          loop14:
                                          while(!(_loc3_ && this))
                                          {
                                             §§push(this.§6!n§);
                                             §§push(this.m_v2.x);
                                             if(!_loc3_)
                                             {
                                                §§push(this.m_v1.x);
                                                if(!(_loc3_ && param1))
                                                {
                                                   addr354:
                                                   §§push(§§pop() - §§pop());
                                                   §§push(this.m_v2.y);
                                                   if(_loc4_ || _loc3_)
                                                   {
                                                      addr364:
                                                      §§push(§§pop() - this.m_v1.y);
                                                   }
                                                   §§pop().Set(§§pop(),§§pop());
                                                   loop15:
                                                   while(true)
                                                   {
                                                      if(_loc4_)
                                                      {
                                                         if(!_loc3_)
                                                         {
                                                            addr373:
                                                            if(_loc3_ && _loc3_)
                                                            {
                                                               break;
                                                            }
                                                            this.§!!d§ = this.§6!n§.Normalize();
                                                            while(!_loc3_)
                                                            {
                                                               §§push(this.§=![§);
                                                               §§push(this.§6!n§.y);
                                                               §§push(this.§6!n§.x);
                                                               if(!(_loc3_ && param1))
                                                               {
                                                                  §§push(-§§pop());
                                                               }
                                                               §§pop().Set(§§pop(),§§pop());
                                                               while(_loc4_)
                                                               {
                                                                  addr318:
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     §§push(this.m_coreV1);
                                                                     §§push(b2Settings.b2_toiSlop);
                                                                     if(_loc4_ || _loc3_)
                                                                     {
                                                                        §§push(-§§pop());
                                                                        if(!(_loc3_ && param1))
                                                                        {
                                                                           §§push(this.§=![§.x);
                                                                           if(!_loc3_)
                                                                           {
                                                                              §§push(this.§6!n§.x);
                                                                              if(_loc4_ || _loc3_)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 if(!_loc3_)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc3_)
                                                                                    {
                                                                                       addr248:
                                                                                       §§push(this.m_v1.x);
                                                                                       if(!_loc3_)
                                                                                       {
                                                                                          addr254:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          §§push(b2Settings.b2_toiSlop);
                                                                                          if(_loc4_)
                                                                                          {
                                                                                             addr258:
                                                                                             §§push(-§§pop());
                                                                                             if(_loc3_ && param2)
                                                                                             {
                                                                                             }
                                                                                             addr289:
                                                                                             §§pop().Set(§§pop(),§§pop());
                                                                                             continue loop12;
                                                                                          }
                                                                                          §§push(this.§=![§.y);
                                                                                          if(!_loc3_)
                                                                                          {
                                                                                             addr271:
                                                                                             §§push(§§pop() - this.§6!n§.y);
                                                                                             if(!_loc3_)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(_loc4_ || _loc3_)
                                                                                                {
                                                                                                   addr285:
                                                                                                   §§push(this.m_v1.y);
                                                                                                }
                                                                                                §§goto(addr289);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr289);
                                                                                          §§push(§§pop() + §§pop());
                                                                                       }
                                                                                       §§goto(addr285);
                                                                                    }
                                                                                    §§goto(addr254);
                                                                                 }
                                                                                 §§goto(addr289);
                                                                              }
                                                                              §§goto(addr271);
                                                                           }
                                                                           §§goto(addr258);
                                                                        }
                                                                        §§goto(addr254);
                                                                     }
                                                                     §§goto(addr248);
                                                                  }
                                                                  else
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        this.m_coreV1 = new b2Vec2();
                                                                        break loop15;
                                                                        §§goto(addr318);
                                                                     }
                                                                     addr493:
                                                                  }
                                                                  if(!(_loc3_ && this))
                                                                  {
                                                                     continue loop15;
                                                                  }
                                                               }
                                                               continue loop5;
                                                               if(_loc4_ || this)
                                                               {
                                                                  continue loop10;
                                                               }
                                                            }
                                                            continue loop8;
                                                         }
                                                         continue loop11;
                                                      }
                                                      continue loop14;
                                                   }
                                                   while(true)
                                                   {
                                                      this.m_coreV2 = new b2Vec2();
                                                      break loop12;
                                                      §§goto(addr373);
                                                   }
                                                }
                                                §§goto(addr364);
                                             }
                                             §§goto(addr354);
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       this.§=![§ = new b2Vec2();
                                       continue loop5;
                                       §§goto(addr402);
                                    }
                                 }
                              }
                              if(!(_loc4_ || param2))
                              {
                                 continue;
                              }
                              this.m_cornerDir1 = this.§=![§;
                              while(!_loc3_)
                              {
                                 §§push(this.m_cornerDir2);
                                 §§push(this.§=![§.x);
                                 if(!_loc3_)
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§push(this.§=![§.y);
                                 if(!(_loc3_ && this))
                                 {
                                    §§push(-§§pop());
                                 }
                                 §§pop().Set(§§pop(),§§pop());
                                 if(_loc3_)
                                 {
                                    continue;
                                 }
                                 §§goto(addr47);
                              }
                              §§goto(addr168);
                           }
                           while(true)
                           {
                              this.m_v2 = new b2Vec2();
                              §§goto(addr493);
                              §§goto(addr423);
                           }
                           addr423:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr499);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc18_:Boolean = true;
         var _loc19_:Boolean = false;
         var _loc4_:b2Mat22 = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:Number = NaN;
         §§push(param2.p2.x);
         if(!(_loc19_ && this))
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_)
            {
               addr45:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc18_ || param3)
            {
               §§push(§§pop() - param2.p1.y);
               if(_loc18_ || this)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               _loc4_ = param3.R;
               §§push(param3.position.x);
               if(!(_loc19_ && param3))
               {
                  §§push(_loc4_.col1.x);
                  if(!_loc19_)
                  {
                     §§push(this.m_v1.x);
                     if(!(_loc19_ && this))
                     {
                        §§push(§§pop() * §§pop());
                        if(_loc18_)
                        {
                           addr102:
                           §§push(_loc4_.col2.x);
                           if(_loc18_)
                           {
                              addr107:
                              §§push(§§pop() * this.m_v1.y);
                           }
                           §§push(§§pop() + §§pop());
                        }
                        §§push(§§pop() + §§pop());
                        if(!_loc19_)
                        {
                           addr116:
                           var _loc7_:Number = §§pop();
                           §§push(param3.position.y);
                           if(!_loc19_)
                           {
                              §§push(_loc4_.col1.y);
                              if(!_loc19_)
                              {
                                 §§push(this.m_v1.x);
                                 if(_loc18_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(_loc18_ || param1)
                                    {
                                       addr155:
                                       §§push(_loc4_.col2.y);
                                       if(_loc18_ || param3)
                                       {
                                          addr150:
                                          §§push(§§pop() * this.m_v1.y);
                                       }
                                       §§push(§§pop() + (§§pop() + §§pop()));
                                       if(!(_loc19_ && this))
                                       {
                                          addr163:
                                          §§push(Number(§§pop()));
                                       }
                                       var _loc8_:* = §§pop();
                                       §§push(param3.position.y);
                                       if(!(_loc19_ && param1))
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc18_)
                                          {
                                             §§push(this.m_v2.x);
                                             if(_loc18_)
                                             {
                                                addr205:
                                                §§push(§§pop() * §§pop());
                                                if(!_loc19_)
                                                {
                                                   §§push(_loc4_.col2.y);
                                                   if(!(_loc19_ && param3))
                                                   {
                                                      §§push(§§pop() * this.m_v2.y);
                                                   }
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(_loc18_ || param2)
                                                {
                                                   addr214:
                                                   §§push(§§pop() - _loc8_);
                                                   if(!_loc19_)
                                                   {
                                                      addr218:
                                                      var _loc9_:Number = §§pop();
                                                      §§push(param3.position.x);
                                                      if(_loc18_ || this)
                                                      {
                                                         §§push(_loc4_.col1.x);
                                                         if(!(_loc19_ && param2))
                                                         {
                                                            §§push(this.m_v2.x);
                                                            if(_loc18_ || this)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc19_)
                                                               {
                                                                  addr252:
                                                                  §§push(_loc4_.col2.x);
                                                                  if(!_loc19_)
                                                                  {
                                                                     addr261:
                                                                     §§push(§§pop() + §§pop() * this.m_v2.y);
                                                                     if(_loc18_)
                                                                     {
                                                                        addr264:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           addr273:
                                                                           §§push(§§pop() - _loc7_);
                                                                           if(_loc18_)
                                                                           {
                                                                              addr276:
                                                                              §§push(-§§pop());
                                                                              if(!_loc19_)
                                                                              {
                                                                                 addr279:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           var _loc10_:* = §§pop();
                                                                           §§push(100 * Number.MIN_VALUE);
                                                                           if(_loc18_ || param2)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           var _loc11_:* = §§pop();
                                                                           §§push(_loc5_);
                                                                           if(!_loc19_)
                                                                           {
                                                                              §§push(_loc9_);
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 if(!_loc19_)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    if(_loc18_)
                                                                                    {
                                                                                       addr306:
                                                                                       §§push(§§pop() * _loc10_);
                                                                                       if(!_loc19_)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(!(_loc19_ && param1))
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc18_)
                                                                                             {
                                                                                                addr322:
                                                                                                §§push(Number(§§pop()));
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                    }
                                                                                    var _loc12_:* = §§pop();
                                                                                    if(_loc18_ || param2)
                                                                                    {
                                                                                       §§push(_loc11_);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          if(§§pop() > §§pop())
                                                                                          {
                                                                                             if(_loc18_ || this)
                                                                                             {
                                                                                                §§push(param2.p1);
                                                                                                if(!(_loc19_ && this))
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(!_loc19_)
                                                                                                   {
                                                                                                      §§push(_loc7_);
                                                                                                      if(!(_loc19_ && param3))
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc18_ || this)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               _loc13_ = §§pop();
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  addr814:
                                                                                                                  §§push(param2.p1.y);
                                                                                                                  loop45:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     addr816:
                                                                                                                     loop43:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        loop39:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop37:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc14_ = §§pop();
                                                                                                                              loop20:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc13_);
                                                                                                                                 loop40:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc19_ && param1)
                                                                                                                                    {
                                                                                                                                       continue loop45;
                                                                                                                                    }
                                                                                                                                    §§push(_loc9_);
                                                                                                                                    loop31:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc18_)
                                                                                                                                       {
                                                                                                                                          continue loop43;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop41:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          if(!(_loc19_ && param1))
                                                                                                                                          {
                                                                                                                                             §§push(_loc10_);
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                             addr807:
                                                                                                                                          }
                                                                                                                                          loop17:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr809:
                                                                                                                                             loop42:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                addr810:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                   loop21:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      loop38:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         loop15:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() <= §§pop());
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop());
                                                                                                                                                               loop33:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(§§pop())
                                                                                                                                                                  {
                                                                                                                                                                     loop34:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§pop();
                                                                                                                                                                        loop35:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc15_);
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(param2.§%!I§);
                                                                                                                                                                              loop58:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc18_ || param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop17;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       loop57:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                                                                          addr743:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             loop36:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(§§pop())
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr745:
                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(-§§pop());
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                                                                         addr748:
                                                                                                                                                                                                         loop55:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                            loop30:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc6_);
                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc19_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop31;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr760:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr761:
                                                                                                                                                                                                               addr765:
                                                                                                                                                                                                               addr766:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc18_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr764:
                                                                                                                                                                                                                     §§push(Number(§§pop() + §§pop()));
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop15;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr765:
                                                                                                                                                                                                               _loc16_ = §§pop();
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc11_);
                                                                                                                                                                                                                  loop1:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc19_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop41;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!(_loc18_ || param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop39;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(-§§pop());
                                                                                                                                                                                                                     loop2:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop38;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           addr675:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc19_ && param2)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop42;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc18_ || param1))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop37;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc16_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc19_ && param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop36;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop34;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                                                                    if(!_loc18_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!§§pop())
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   addr610:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc18_ || this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc19_ && param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop30;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc12_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc19_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop55;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr765);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr609:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr378);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr377:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr607:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop();
                                                                                                                                                                                                                                       addr705:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc19_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                continue loop2;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop20;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr417);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr575:
                                                                                                                                                                                                                           if(_loc19_ && param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           if(_loc19_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop57;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(1 + _loc11_);
                                                                                                                                                                                                                           if(!_loc19_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              if(!_loc19_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr597:
                                                                                                                                                                                                                                 if(!(_loc19_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc19_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop58;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr607);
                                                                                                                                                                                                                                    §§push(§§pop() <= §§pop());
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr761);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr765);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr625);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr760);
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
                                                                                                                                                                                                §§goto(addr377);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr807);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr760);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop35;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr743);
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
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr766);
                                                                                                            }
                                                                                                            §§goto(addr809);
                                                                                                         }
                                                                                                         §§goto(addr810);
                                                                                                      }
                                                                                                      §§goto(addr816);
                                                                                                   }
                                                                                                   §§goto(addr810);
                                                                                                }
                                                                                                §§goto(addr814);
                                                                                             }
                                                                                             §§goto(addr656);
                                                                                          }
                                                                                          addr378:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(false);
                                                                                             if(_loc19_ && this)
                                                                                             {
                                                                                                while(_loc19_ && param2)
                                                                                                {
                                                                                                }
                                                                                                return §§pop();
                                                                                             }
                                                                                             addr417:
                                                                                             addr417:
                                                                                             continue loop23;
                                                                                          }
                                                                                          addr412:
                                                                                          return §§pop();
                                                                                       }
                                                                                       §§goto(addr748);
                                                                                    }
                                                                                    §§goto(addr570);
                                                                                 }
                                                                                 §§goto(addr322);
                                                                              }
                                                                              §§goto(addr306);
                                                                           }
                                                                           §§goto(addr322);
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr273);
                                                                  }
                                                                  §§goto(addr261);
                                                               }
                                                               §§goto(addr264);
                                                            }
                                                            §§goto(addr261);
                                                         }
                                                         §§goto(addr252);
                                                      }
                                                      §§goto(addr279);
                                                   }
                                                }
                                                §§goto(addr218);
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(!_loc19_)
                                             {
                                                §§goto(addr205);
                                             }
                                             §§goto(addr214);
                                          }
                                          §§goto(addr205);
                                       }
                                       §§goto(addr218);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr150);
                              }
                              §§goto(addr155);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr116);
                     }
                     §§goto(addr107);
                  }
                  §§goto(addr102);
               }
               §§goto(addr116);
            }
            §§goto(addr68);
         }
         §§goto(addr45);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = false;
         var _loc9_:Boolean = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(!_loc8_)
         {
            §§push(param2.position);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               loop1:
               while(true)
               {
                  §§push(_loc3_.col1);
                  loop2:
                  while(true)
                  {
                     §§push(§§pop().x);
                     loop3:
                     while(true)
                     {
                        §§push(this.m_v1);
                        loop4:
                        while(true)
                        {
                           §§push(§§pop().x);
                           loop5:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              loop6:
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 loop7:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(this.m_v1);
                                       loop9:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          loop10:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             loop11:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop13:
                                                   while(true)
                                                   {
                                                      §§push(Number(§§pop()));
                                                      loop14:
                                                      while(true)
                                                      {
                                                         _loc4_ = §§pop();
                                                         loop15:
                                                         while(true)
                                                         {
                                                            §§push(param2.position);
                                                            loop16:
                                                            while(true)
                                                            {
                                                               §§push(§§pop().y);
                                                               loop17:
                                                               while(_loc9_ || _loc3_)
                                                               {
                                                                  §§push(_loc3_.col1);
                                                                  loop18:
                                                                  while(_loc9_)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_v1);
                                                                        if(!_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().x);
                                                                        if(!(_loc8_ && _loc3_))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           while(!(_loc8_ && param1))
                                                                           {
                                                                              §§push(_loc3_.col2);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                              }
                                                                              if(_loc9_ || this)
                                                                              {
                                                                                 continue loop19;
                                                                              }
                                                                           }
                                                                           continue loop12;
                                                                        }
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           §§push(this.m_v1);
                                                                           if(!_loc9_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(§§pop().y);
                                                                           loop23:
                                                                           for(; _loc9_; if(_loc8_ && _loc3_)
                                                                           {
                                                                              continue;
                                                                           },§§goto(addr393),§§push(§§pop() * §§pop()))
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop24:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 loop25:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    loop26:
                                                                                    while(!(_loc8_ && this))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          _loc5_ = §§pop();
                                                                                          addr543:
                                                                                          addr429:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param2.position);
                                                                                             continue loop0;
                                                                                          }
                                                                                          loop30:
                                                                                          while(_loc9_ || this)
                                                                                          {
                                                                                             §§push(_loc3_.col1);
                                                                                             while(!_loc8_)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.m_v2);
                                                                                                   addr443:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr444:
                                                                                                      loop34:
                                                                                                      while(_loc9_)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc3_.col2);
                                                                                                            loop36:
                                                                                                            while(!(_loc8_ && param2))
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.m_v2);
                                                                                                                  addr459:
                                                                                                                  addr342:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     addr460:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        continue loop24;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  if(!(_loc9_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  if(_loc8_ && param2)
                                                                                                                  {
                                                                                                                     continue loop8;
                                                                                                                  }
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc9_ || param1)
                                                                                                                  {
                                                                                                                     addr364:
                                                                                                                     §§push(_loc3_.col2);
                                                                                                                     if(!_loc9_)
                                                                                                                     {
                                                                                                                        continue loop36;
                                                                                                                     }
                                                                                                                     if(_loc9_)
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc9_ || param2)
                                                                                                                        {
                                                                                                                           §§push(this.m_v2);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop23;
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr459);
                                                                                                                           }
                                                                                                                           §§goto(addr460);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           addr393:
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              continue loop34;
                                                                                                                           }
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop11;
                                                                                                                           }
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              continue loop5;
                                                                                                                           }
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop45:
                                                                                                                           while(_loc9_ || _loc3_)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              while(!(_loc8_ && _loc3_))
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc7_ = §§pop();
                                                                                                                                    addr417:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       addr250:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc6_);
                                                                                                                                          addr251:
                                                                                                                                          addr469:
                                                                                                                                          while(!_loc8_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr253);
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr470:
                                                                                                                                             while(_loc9_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                   addr474:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(param2.position);
                                                                                                                                                      if(!_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop16;
                                                                                                                                                      }
                                                                                                                                                      continue loop0;
                                                                                                                                                   }
                                                                                                                                                   continue loop11;
                                                                                                                                                   addr155:
                                                                                                                                                   if(!(_loc9_ || param2))
                                                                                                                                                   {
                                                                                                                                                      continue;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc9_)
                                                                                                                                                   {
                                                                                                                                                      continue loop30;
                                                                                                                                                   }
                                                                                                                                                   if(_loc8_ && param1)
                                                                                                                                                   {
                                                                                                                                                      continue loop17;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc7_);
                                                                                                                                                   if(!(_loc8_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(_loc8_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop45;
                                                                                                                                                      }
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         continue loop32;
                                                                                                                                                      }
                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc8_ && _loc3_))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  addr208:
                                                                                                                                                                  param1.§]S§.y = _loc5_;
                                                                                                                                                                  addr209:
                                                                                                                                                                  if(_loc9_)
                                                                                                                                                                  {
                                                                                                                                                                     addr116:
                                                                                                                                                                     §§push(param1.§-!o§);
                                                                                                                                                                     if(_loc9_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        addr124:
                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                        if(!(_loc8_ && _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().y = §§pop();
                                                                                                                                                                           addr132:
                                                                                                                                                                           if(_loc8_ && param2)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param1.§]S§);
                                                                                                                                                                                 addr270:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                    addr271:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                       addr282:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(param1.§-!o§);
                                                                                                                                                                                          addr238:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc6_);
                                                                                                                                                                                             addr239:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                addr240:
                                                                                                                                                                                                while(_loc9_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   loop66:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr142:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc5_);
                                                                                                                                                                                                         if(_loc9_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc8_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr148);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr416);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr250);
                                                                                                                                                                                                         continue loop66;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr139:
                                                                                                                                                                                                      if(!_loc8_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr32);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr543);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr417);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr268:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr139);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop().x = §§pop();
                                                                                                                                                                           addr224:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc8_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr142);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr240);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr124);
                                                                                                                                                                        }
                                                                                                                                                                        addr223:
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc9_ || this)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr223);
                                                                                                                                                                           §§push(_loc4_);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr238);
                                                                                                                                                                        §§goto(addr116);
                                                                                                                                                                     }
                                                                                                                                                                     addr215:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr474);
                                                                                                                                                                  addr207:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr282);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr224);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr209);
                                                                                                                                                      }
                                                                                                                                                      §§push(param1.§]S§);
                                                                                                                                                      if(!(_loc8_ && param1))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc8_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc7_);
                                                                                                                                                               if(!_loc8_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc8_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                        for(; _loc9_; §§pop().y = §§pop(),if(_loc9_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr215);
                                                                                                                                                                              }
                                                                                                                                                                              addr234:
                                                                                                                                                                           }
                                                                                                                                                                           addr32:
                                                                                                                                                                        },continue,return)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc8_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc8_ && _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop15;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(param1.§-!o§);
                                                                                                                                                                              if(!(_loc8_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                 if(!(_loc8_ && _loc3_))
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc8_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr239);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr124);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr116);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr209);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr132);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr271);
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     §§goto(addr234);
                                                                                                                                                                  }
                                                                                                                                                                  addr233:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr208);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr270);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr233);
                                                                                                                                                         }
                                                                                                                                                         addr232:
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr207);
                                                                                                                                                      continue loop45;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr251);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             continue loop13;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(!(_loc9_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 §§goto(addr155);
                                                                                                                              }
                                                                                                                              continue loop26;
                                                                                                                           }
                                                                                                                           continue loop6;
                                                                                                                           addr400:
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr513);
                                                                                                                  }
                                                                                                                  §§goto(addr400);
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop22;
                                                                                                   }
                                                                                                }
                                                                                                §§push(_loc3_.col1);
                                                                                                if(!(_loc9_ || param1))
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc9_ || _loc3_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      if(!_loc9_)
                                                                                                      {
                                                                                                         continue loop25;
                                                                                                      }
                                                                                                      if(!(_loc9_ || _loc3_))
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      §§push(this.m_v2);
                                                                                                      if(_loc9_ || this)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               continue loop24;
                                                                                                            }
                                                                                                            §§goto(addr342);
                                                                                                         }
                                                                                                         §§goto(addr393);
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr443);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr447);
                                                                                                }
                                                                                                §§goto(addr364);
                                                                                             }
                                                                                             continue loop18;
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    continue loop1;
                                                                                 }
                                                                              }
                                                                           }
                                                                           continue loop10;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop2;
                                                               }
                                                               continue loop14;
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
               }
            }
         }
         §§goto(addr247);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_)
         {
            param1.§+!<§ = 0;
         }
         do
         {
            param1.center.SetV(this.m_v1);
            do
            {
               param1.§+j§ = 0;
            }
            while(!_loc4_);
            
         }
         while(_loc3_);
         
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = true;
         var _loc11_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc10_)
         {
            §§push(param2);
            if(_loc10_)
            {
               addr25:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!(_loc11_ && param1))
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§,^§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§,^§(param3,this.m_v2);
            §§push(b2Math.§1!P§(param1,_loc6_));
            if(!(_loc11_ && param3))
            {
               §§push(§§pop() - param2);
               if(_loc10_ || param1)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(b2Math.§1!P§(param1,_loc7_));
            if(!(_loc11_ && param1))
            {
               §§push(§§pop() - param2);
               if(_loc10_ || this)
               {
                  addr95:
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               if(!_loc11_)
               {
                  §§push(_loc8_);
                  loop0:
                  while(true)
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        if(§§pop() <= §§pop())
                        {
                           §§push(_loc9_);
                           loop2:
                           do
                           {
                              §§push(0);
                              if(_loc10_)
                              {
                                 if(_loc11_ && param2)
                                 {
                                    continue loop1;
                                 }
                                 if(§§pop() > §§pop())
                                 {
                                    loop3:
                                    while(true)
                                    {
                                       if(_loc10_ || param1)
                                       {
                                          §§push(_loc7_);
                                          §§push(_loc9_);
                                          if(!(_loc11_ && param2))
                                          {
                                             §§push(-§§pop());
                                             if(!_loc11_)
                                             {
                                                §§push(_loc8_);
                                                if(!(_loc11_ && param3))
                                                {
                                                   §§push(_loc9_);
                                                   if(!_loc11_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!(_loc11_ && param3))
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         if(!_loc11_)
                                                         {
                                                            addr437:
                                                            §§push(_loc6_.x);
                                                            if(!_loc11_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc10_ || param1)
                                                               {
                                                                  §§push(_loc8_);
                                                                  if(!_loc11_)
                                                                  {
                                                                     §§push(_loc8_);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(§§pop() - _loc9_);
                                                                        if(!(_loc11_ && param1))
                                                                        {
                                                                           addr476:
                                                                           §§push(§§pop() / §§pop());
                                                                           if(!(_loc11_ && this))
                                                                           {
                                                                              addr472:
                                                                              §§push(§§pop() * _loc7_.x);
                                                                           }
                                                                           §§pop().x = §§pop() + §§pop();
                                                                           loop4:
                                                                           while(true)
                                                                           {
                                                                              if(!_loc11_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc7_);
                                                                                    §§push(_loc9_);
                                                                                    if(_loc10_ || this)
                                                                                    {
                                                                                       §§push(-§§pop());
                                                                                       if(!(_loc11_ && param1))
                                                                                       {
                                                                                          addr296:
                                                                                          §§push(_loc8_);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(_loc9_);
                                                                                             if(!_loc11_)
                                                                                             {
                                                                                                §§push(§§pop() - §§pop());
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(§§pop() / §§pop());
                                                                                                   if(!(_loc11_ && param3))
                                                                                                   {
                                                                                                      addr313:
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         addr322:
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         if(_loc10_ || this)
                                                                                                         {
                                                                                                            addr340:
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc10_ || param1)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  addr351:
                                                                                                                  §§push(§§pop() - _loc9_);
                                                                                                                  if(_loc10_ || param3)
                                                                                                                  {
                                                                                                                     addr360:
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc10_ || param1)
                                                                                                                     {
                                                                                                                        addr370:
                                                                                                                        §§push(§§pop() * _loc7_.y);
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop() + §§pop();
                                                                                                                     continue loop3;
                                                                                                                  }
                                                                                                                  §§goto(addr370);
                                                                                                               }
                                                                                                               §§goto(addr360);
                                                                                                            }
                                                                                                            §§goto(addr370);
                                                                                                         }
                                                                                                         §§goto(addr360);
                                                                                                      }
                                                                                                      §§goto(addr370);
                                                                                                   }
                                                                                                   §§goto(addr340);
                                                                                                }
                                                                                                §§goto(addr370);
                                                                                             }
                                                                                             §§goto(addr351);
                                                                                          }
                                                                                          §§goto(addr322);
                                                                                       }
                                                                                       §§goto(addr313);
                                                                                    }
                                                                                    §§goto(addr296);
                                                                                 }
                                                                                 addr479:
                                                                              }
                                                                              else
                                                                              {
                                                                                 loop5:
                                                                                 while(true)
                                                                                 {
                                                                                    addr245:
                                                                                    loop7:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(param4);
                                                                                       §§push(_loc5_.x);
                                                                                       if(_loc10_ || this)
                                                                                       {
                                                                                          §§push(_loc6_.x);
                                                                                          if(_loc10_)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                addr265:
                                                                                                §§push(§§pop() + _loc7_.x);
                                                                                                if(_loc10_)
                                                                                                {
                                                                                                   addr268:
                                                                                                   §§push(§§pop() / 3);
                                                                                                }
                                                                                             }
                                                                                             §§pop().x = §§pop();
                                                                                             for(; _loc10_; §§pop().y = §§pop(),if(_loc11_ && this)
                                                                                             {
                                                                                                continue;
                                                                                             },if(_loc10_ || param1)
                                                                                             {
                                                                                                §§push(0.5);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   break loop7;
                                                                                                }
                                                                                                if(_loc10_ || param1)
                                                                                                {
                                                                                                   if(_loc11_)
                                                                                                   {
                                                                                                      continue loop0;
                                                                                                   }
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(!(_loc11_ && param3))
                                                                                                   {
                                                                                                      §§push(_loc5_.x);
                                                                                                      if(!(_loc11_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§push(_loc7_.y);
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               §§push(_loc5_.y);
                                                                                                               if(!_loc11_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc10_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(_loc10_ || param2)
                                                                                                                     {
                                                                                                                        addr153:
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(_loc11_ && this)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr188:
                                                                                                                        §§push(_loc7_.x);
                                                                                                                        if(_loc10_ || param3)
                                                                                                                        {
                                                                                                                           addr183:
                                                                                                                           §§push(§§pop() - _loc5_.x);
                                                                                                                        }
                                                                                                                        §§push(§§pop() * (§§pop() - §§pop() * §§pop()));
                                                                                                                        break loop7;
                                                                                                                     }
                                                                                                                     §§goto(addr188);
                                                                                                                  }
                                                                                                                  §§push(_loc5_.y);
                                                                                                                  if(_loc10_ || this)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(_loc11_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     §§goto(addr188);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr183);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr188);
                                                                                                   }
                                                                                                   §§goto(addr153);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0);
                                                                                                      §§goto(addr667);
                                                                                                   }
                                                                                                   addr666:
                                                                                                }
                                                                                             },§§goto(addr677))
                                                                                             {
                                                                                                if(!_loc10_)
                                                                                                {
                                                                                                   continue loop4;
                                                                                                }
                                                                                                if(!_loc11_)
                                                                                                {
                                                                                                   §§push(param4);
                                                                                                   §§push(_loc5_.y);
                                                                                                   if(!(_loc11_ && param1))
                                                                                                   {
                                                                                                      §§push(_loc6_.y);
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(§§pop() + §§pop());
                                                                                                         if(!(_loc10_ || this))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(_loc7_.y);
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!(_loc10_ || param2))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() / 3);
                                                                                                   continue;
                                                                                                }
                                                                                                addr661:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc6_);
                                                                                                   §§push(_loc9_);
                                                                                                   if(!(_loc11_ && this))
                                                                                                   {
                                                                                                      §§push(-§§pop());
                                                                                                      if(!(_loc11_ && this))
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc11_)
                                                                                                         {
                                                                                                            §§push(_loc9_);
                                                                                                            if(_loc10_ || param2)
                                                                                                            {
                                                                                                               §§push(§§pop() - §§pop());
                                                                                                               if(_loc10_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     addr520:
                                                                                                                     §§push(_loc6_.y);
                                                                                                                     if(_loc10_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        if(_loc11_ && param2)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr564:
                                                                                                                        §§pop().y = §§pop();
                                                                                                                        continue loop5;
                                                                                                                     }
                                                                                                                     addr560:
                                                                                                                     §§goto(addr564);
                                                                                                                     §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                                                  }
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!_loc11_)
                                                                                                                  {
                                                                                                                     addr540:
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(!(_loc11_ && param3))
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc9_);
                                                                                                                        if(_loc10_ || this)
                                                                                                                        {
                                                                                                                           addr557:
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                           if(_loc11_)
                                                                                                                           {
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr560);
                                                                                                                     }
                                                                                                                     §§goto(addr557);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr560);
                                                                                                            }
                                                                                                            §§goto(addr557);
                                                                                                         }
                                                                                                         §§goto(addr540);
                                                                                                      }
                                                                                                      §§goto(addr520);
                                                                                                   }
                                                                                                   §§goto(addr564);
                                                                                                }
                                                                                             }
                                                                                             continue loop3;
                                                                                          }
                                                                                          §§goto(addr265);
                                                                                       }
                                                                                       §§goto(addr268);
                                                                                       addr380:
                                                                                    }
                                                                                    continue loop2;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr472);
                                                               }
                                                               §§goto(addr476);
                                                            }
                                                            §§goto(addr472);
                                                         }
                                                         §§goto(addr476);
                                                      }
                                                   }
                                                }
                                                §§goto(addr472);
                                             }
                                             §§goto(addr437);
                                          }
                                          §§goto(addr476);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                          }
                                          addr665:
                                       }
                                       §§goto(addr666);
                                    }
                                 }
                                 §§goto(addr245);
                              }
                              addr667:
                              while(true)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    if(!(_loc11_ && param1))
                                    {
                                       break;
                                    }
                                    addr677:
                                    while(true)
                                    {
                                    }
                                 }
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    §§push(_loc9_);
                                    if(_loc10_)
                                    {
                                       §§push(-§§pop());
                                       if(_loc10_ || param1)
                                       {
                                          §§push(_loc8_);
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(_loc9_);
                                             if(!(_loc11_ && param2))
                                             {
                                                §§push(§§pop() - §§pop());
                                                if(_loc10_)
                                                {
                                                   §§push(§§pop() / §§pop());
                                                   if(!(_loc11_ && this))
                                                   {
                                                      addr606:
                                                      §§push(_loc6_.x);
                                                      if(!(_loc11_ && param3))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc10_ || this)
                                                         {
                                                            §§push(_loc8_);
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               addr631:
                                                               §§push(_loc8_);
                                                               if(_loc10_)
                                                               {
                                                                  addr634:
                                                                  §§push(§§pop() - _loc9_);
                                                                  if(_loc10_)
                                                                  {
                                                                     addr659:
                                                                     §§push(§§pop() / §§pop());
                                                                     if(!(_loc11_ && param2))
                                                                     {
                                                                        addr656:
                                                                        §§push(_loc7_.x);
                                                                     }
                                                                     §§pop().x = §§pop() + §§pop();
                                                                     §§goto(addr661);
                                                                  }
                                                                  §§goto(addr659);
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                               §§goto(addr659);
                                                            }
                                                            §§goto(addr656);
                                                         }
                                                         §§goto(addr659);
                                                      }
                                                   }
                                                }
                                                §§goto(addr659);
                                             }
                                             §§goto(addr634);
                                          }
                                          §§goto(addr631);
                                       }
                                       §§goto(addr659);
                                    }
                                    §§goto(addr606);
                                 }
                              }
                              return 0;
                           }
                           while(_loc11_);
                           
                           return §§pop();
                        }
                        §§goto(addr665);
                     }
                  }
               }
               §§goto(addr479);
            }
            §§goto(addr95);
         }
         §§goto(addr25);
      }
      
      public function §>!E§() : Number
      {
         return this.§!!d§;
      }
      
      public function GetVertex1() : b2Vec2
      {
         return this.m_v1;
      }
      
      public function GetVertex2() : b2Vec2
      {
         return this.m_v2;
      }
      
      public function GetCoreVertex1() : b2Vec2
      {
         return this.m_coreV1;
      }
      
      public function GetCoreVertex2() : b2Vec2
      {
         return this.m_coreV2;
      }
      
      public function §'!=§() : b2Vec2
      {
         return this.§=![§;
      }
      
      public function §]l§() : b2Vec2
      {
         return this.§6!n§;
      }
      
      public function GetCorner1Vector() : b2Vec2
      {
         return this.m_cornerDir1;
      }
      
      public function GetCorner2Vector() : b2Vec2
      {
         return this.m_cornerDir2;
      }
      
      public function Corner1IsConvex() : Boolean
      {
         return this.m_cornerConvex1;
      }
      
      public function Corner2IsConvex() : Boolean
      {
         return this.m_cornerConvex2;
      }
      
      public function §1!9§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(_loc3_ || _loc2_)
         {
            §§push(_loc2_.col1.x);
            if(!_loc4_)
            {
               §§push(this.m_coreV1.x);
               if(_loc3_)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && this))
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc3_ || this)
                     {
                        §§push(this.m_coreV1);
                        if(_loc3_ || _loc2_)
                        {
                           §§push(§§pop().y);
                           if(_loc3_ || _loc2_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr97:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(!(_loc4_ && _loc3_))
                                    {
                                       §§push(_loc2_.col1.y);
                                       if(!_loc3_)
                                       {
                                       }
                                    }
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr141);
                        }
                        addr125:
                        §§push(this.m_coreV1.x);
                        if(!_loc4_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc4_)
                           {
                           }
                        }
                     }
                     §§goto(addr147);
                  }
                  §§goto(addr97);
               }
               §§goto(addr147);
            }
            addr147:
            §§push(_loc2_.col2.y);
            if(_loc3_ || _loc3_)
            {
               addr141:
               §§push(§§pop() * this.m_coreV1.y);
            }
            return new §§pop().b2Vec2(§§pop(),§§pop() + (§§pop() + §§pop()));
         }
         §§goto(addr97);
      }
      
      public function §;C§() : b2EdgeShape
      {
         return this.§79§;
      }
      
      public function §#!2§() : b2EdgeShape
      {
         return this.§0[§;
      }
      
      public function §<b§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(_loc10_ || param3)
         {
            §§push(_loc4_.col1.x);
            if(_loc10_)
            {
               §§push(this.m_coreV1.x);
               if(!_loc9_)
               {
                  addr59:
                  §§push(§§pop() * §§pop());
                  if(_loc10_)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc10_ || param1)
                     {
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc10_ || this)
                  {
                     addr67:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param1.position.y);
                  if(_loc10_)
                  {
                     §§push(_loc4_.col1.y);
                     if(!(_loc9_ && param2))
                     {
                        §§push(this.m_coreV1.x);
                        if(!(_loc9_ && this))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc10_ || param3)
                           {
                              addr102:
                              §§push(_loc4_.col2.y);
                              if(!_loc9_)
                              {
                                 addr111:
                                 §§push(§§pop() + §§pop() * this.m_coreV1.y);
                              }
                              §§goto(addr111);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc10_ || param2)
                           {
                              addr120:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param1.position.x);
                           if(_loc10_ || param3)
                           {
                              §§push(_loc4_.col1.x);
                              if(!(_loc9_ && param2))
                              {
                                 §§push(this.m_coreV2.x);
                                 if(!_loc9_)
                                 {
                                    addr170:
                                    §§push(§§pop() * §§pop());
                                    if(_loc10_ || param2)
                                    {
                                       §§push(_loc4_.col2.x);
                                       if(_loc10_ || param2)
                                       {
                                          §§push(§§pop() * this.m_coreV2.y);
                                       }
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(_loc10_)
                                    {
                                       addr184:
                                       var _loc7_:Number = §§pop();
                                       §§push(param1.position.y);
                                       if(_loc10_)
                                       {
                                          §§push(_loc4_.col1.y);
                                          if(_loc10_)
                                          {
                                             §§push(this.m_coreV2.x);
                                             if(_loc10_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc10_ || param2)
                                                {
                                                   addr218:
                                                   §§push(_loc4_.col2.y);
                                                   if(!_loc9_)
                                                   {
                                                      addr213:
                                                      §§push(§§pop() * this.m_coreV2.y);
                                                   }
                                                   §§push(§§pop() + (§§pop() + §§pop()));
                                                   if(_loc10_ || param2)
                                                   {
                                                      addr226:
                                                      §§push(Number(§§pop()));
                                                   }
                                                   var _loc8_:* = §§pop();
                                                   if(_loc10_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc10_ || param2)
                                                      {
                                                         §§push(param2);
                                                         if(!_loc9_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc10_)
                                                            {
                                                               addr316:
                                                               §§push(_loc6_);
                                                               if(_loc10_)
                                                               {
                                                                  §§push(param3);
                                                                  if(_loc10_ || param3)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc10_ || param2)
                                                                     {
                                                                        addr335:
                                                                        §§push(§§pop() + §§pop());
                                                                        §§push(_loc7_);
                                                                        if(!_loc9_)
                                                                        {
                                                                           §§push(param2);
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr352:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc9_)
                                                                              {
                                                                                 addr366:
                                                                                 §§push(_loc8_);
                                                                                 if(!(_loc9_ && param2))
                                                                                 {
                                                                                    addr363:
                                                                                    §§push(§§pop() * param3);
                                                                                 }
                                                                                 if(§§pop() > §§pop() + §§pop())
                                                                                 {
                                                                                    if(!(_loc9_ && param3))
                                                                                    {
                                                                                       §§push(this.§"H§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          addr377:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().x = §§pop();
                                                                                          }
                                                                                       }
                                                                                       addr376:
                                                                                    }
                                                                                    loop2:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(this.§"H§);
                                                                                       addr299:
                                                                                       loop3:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc6_);
                                                                                          loop4:
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop().y = §§pop();
                                                                                             loop5:
                                                                                             while(true)
                                                                                             {
                                                                                                loop6:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(this.§"H§);
                                                                                                   if(_loc10_ || param1)
                                                                                                   {
                                                                                                      break;
                                                                                                   }
                                                                                                   loop7:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ && this)
                                                                                                      {
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      if(_loc10_)
                                                                                                      {
                                                                                                         §§push(_loc8_);
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               if(_loc9_)
                                                                                                               {
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§pop().y = §§pop();
                                                                                                               if(_loc10_)
                                                                                                               {
                                                                                                                  if(!(_loc9_ && param1))
                                                                                                                  {
                                                                                                                     if(_loc10_ || this)
                                                                                                                     {
                                                                                                                        continue loop6;
                                                                                                                     }
                                                                                                                     continue loop2;
                                                                                                                  }
                                                                                                                  continue loop5;
                                                                                                               }
                                                                                                               continue;
                                                                                                            }
                                                                                                            continue loop4;
                                                                                                         }
                                                                                                         addr294:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§pop().x = §§pop();
                                                                                                            continue loop7;
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr376);
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr377);
                                                                                                }
                                                                                                return §§pop();
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§push(this.§"H§);
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    if(!(_loc9_ && param2))
                                                                                    {
                                                                                       §§goto(addr294);
                                                                                       §§push(_loc7_);
                                                                                    }
                                                                                    §§goto(addr299);
                                                                                 }
                                                                              }
                                                                              §§goto(addr366);
                                                                           }
                                                                           §§goto(addr363);
                                                                        }
                                                                     }
                                                                     §§goto(addr366);
                                                                  }
                                                                  §§goto(addr352);
                                                               }
                                                            }
                                                            §§goto(addr335);
                                                         }
                                                         §§goto(addr366);
                                                      }
                                                      §§goto(addr316);
                                                   }
                                                   §§goto(addr280);
                                                }
                                                §§goto(addr218);
                                             }
                                             §§goto(addr213);
                                          }
                                          §§goto(addr218);
                                       }
                                       §§goto(addr226);
                                    }
                                    §§goto(addr184);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§goto(addr170);
                           }
                           §§goto(addr184);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr102);
                  }
                  §§goto(addr120);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr59);
         }
         §§goto(addr67);
      }
      
      b2internal function §#!§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!(_loc6_ && param1))
         {
            this.§0[§ = param1;
            while(true)
            {
               this.m_coreV1 = param2;
               while(true)
               {
                  this.m_cornerDir1 = param3;
                  §§goto(addr53);
               }
            }
         }
         addr53:
         while(true)
         {
            this.m_cornerConvex1 = param4;
            if(!_loc6_)
            {
               if(_loc5_)
               {
                  if(!_loc6_)
                  {
                     break;
                  }
                  continue loop0;
               }
               continue loop1;
            }
         }
      }
      
      b2internal function §&!e§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!(_loc5_ && this))
         {
            this.§79§ = param1;
            loop0:
            do
            {
               this.m_coreV2 = param2;
               while(true)
               {
                  this.m_cornerDir2 = param3;
                  while(!_loc5_)
                  {
                     this.m_cornerConvex2 = param4;
                     if(!(_loc5_ && param3))
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(!_loc6_);
            
         }
      }
   }
}
