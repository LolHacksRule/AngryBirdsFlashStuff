package §!"3§
{
   import §'"-§.b2AABB;
   import §'"-§.b2RayCastInput;
   import §'"-§.b2RayCastOutput;
   import §,"[§.b2Settings;
   import §,"[§.b2internal;
   import §6!^§.b2Mat22;
   import §6!^§.b2Math;
   import §6!^§.b2Transform;
   import §6!^§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §=!#§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §+!A§:Number;
      
      b2internal var §0"#§:b2Vec2;
      
      b2internal var §24§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §8!C§:b2EdgeShape;
      
      b2internal var §9!M§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§=!#§ = new b2Vec2();
            loop0:
            while(true)
            {
               this.m_v1 = new b2Vec2();
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.m_coreV1 = new b2Vec2();
                     loop3:
                     for(; _loc3_; if(_loc4_ && this)
                     {
                        continue;
                     },this.m_cornerDir1 = this.§0"#§,§§goto(addr83))
                     {
                        this.m_coreV2 = new b2Vec2();
                        loop4:
                        while(true)
                        {
                           this.§0"#§ = new b2Vec2();
                           while(true)
                           {
                              this.§24§ = new b2Vec2();
                              while(true)
                              {
                                 this.m_cornerDir1 = new b2Vec2();
                                 addr445:
                                 while(true)
                                 {
                                    this.m_cornerDir2 = new b2Vec2();
                                    loop8:
                                    while(true)
                                    {
                                       super();
                                       addr433:
                                       while(true)
                                       {
                                          §<"@§ = b2internal::?!7;
                                          addr429:
                                          while(true)
                                          {
                                             this.§9!M§ = null;
                                             addr322:
                                             if(_loc3_ || param1)
                                             {
                                                continue loop8;
                                             }
                                          }
                                       }
                                    }
                                 }
                                 if(_loc4_ && param1)
                                 {
                                    continue;
                                 }
                                 §§push(this.m_coreV1);
                                 §§push(b2Settings.b2_toiSlop);
                                 if(_loc3_ || param2)
                                 {
                                    §§push(-§§pop());
                                    if(_loc3_ || param1)
                                    {
                                       §§push(this.§0"#§.x);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(this.§24§.x);
                                          if(_loc3_ || this)
                                          {
                                             §§push(§§pop() - §§pop());
                                             if(_loc3_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(!(_loc4_ && _loc3_))
                                                {
                                                   §§goto(addr242);
                                                }
                                                §§goto(addr253);
                                             }
                                             §§goto(addr257);
                                          }
                                          §§goto(addr281);
                                       }
                                       §§goto(addr284);
                                    }
                                    addr242:
                                    §§push(this.m_v1.x);
                                    if(_loc3_ || _loc3_)
                                    {
                                       addr253:
                                       §§push(§§pop() + §§pop());
                                       §§push(b2Settings.b2_toiSlop);
                                       if(_loc3_)
                                       {
                                          addr257:
                                          §§push(-§§pop());
                                          if(_loc3_)
                                          {
                                             §§push(this.§0"#§.y);
                                             if(_loc3_ || _loc3_)
                                             {
                                                §§push(§§pop() - this.§24§.y);
                                                if(!(_loc4_ && param1))
                                                {
                                                   §§goto(addr281);
                                                }
                                                §§push(§§pop() + §§pop());
                                             }
                                             addr281:
                                             §§goto(addr288);
                                          }
                                       }
                                       §§goto(addr284);
                                    }
                                    addr288:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc4_)
                                    {
                                       addr284:
                                       §§push(this.m_v1.y);
                                    }
                                    §§pop().Set(§§pop(),§§pop());
                                    loop18:
                                    do
                                    {
                                       §§push(this.m_coreV2);
                                       §§push(b2Settings.b2_toiSlop);
                                       if(!(_loc4_ && this))
                                       {
                                          §§push(-§§pop());
                                          if(_loc3_ || this)
                                          {
                                             §§push(this.§0"#§.x);
                                             if(!_loc4_)
                                             {
                                                §§push(this.§24§.x);
                                                if(_loc3_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc4_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc4_)
                                                      {
                                                         addr170:
                                                         §§push(this.m_v2.x);
                                                         if(_loc3_)
                                                         {
                                                            addr139:
                                                            §§push(§§pop() + §§pop());
                                                         }
                                                         §§pop().Set(§§pop(),§§pop());
                                                         while(!_loc4_)
                                                         {
                                                            continue loop3;
                                                            if(!(_loc4_ && this))
                                                            {
                                                               continue loop18;
                                                            }
                                                         }
                                                         §§goto(addr433);
                                                      }
                                                      §§push(b2Settings.b2_toiSlop);
                                                      if(_loc3_)
                                                      {
                                                         §§push(-§§pop());
                                                         if(!_loc4_)
                                                         {
                                                            §§push(this.§0"#§.y);
                                                            if(_loc3_ || this)
                                                            {
                                                               §§push(§§pop() + this.§24§.y);
                                                               if(_loc3_)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc4_)
                                                                  {
                                                                  }
                                                                  §§goto(addr170);
                                                               }
                                                               addr169:
                                                               §§goto(addr170);
                                                               §§push(§§pop() + §§pop());
                                                            }
                                                         }
                                                         §§goto(addr169);
                                                         §§push(this.m_v2.y);
                                                      }
                                                   }
                                                   §§goto(addr170);
                                                }
                                                §§goto(addr169);
                                             }
                                             §§goto(addr139);
                                          }
                                       }
                                       §§goto(addr170);
                                    }
                                    while(_loc4_ && this);
                                    
                                    if(!_loc3_)
                                    {
                                       loop17:
                                       while(true)
                                       {
                                          if(!(_loc4_ && param1))
                                          {
                                             addr315:
                                             if(!(_loc4_ && _loc3_))
                                             {
                                                §§goto(addr322);
                                             }
                                             while(true)
                                             {
                                                this.§8!C§ = null;
                                                addr417:
                                                while(!_loc4_)
                                                {
                                                   this.m_v1 = param1;
                                                }
                                                continue loop4;
                                                §§goto(addr315);
                                             }
                                             addr424:
                                          }
                                          else
                                          {
                                             loop15:
                                             while(true)
                                             {
                                                if(!(_loc4_ && param2))
                                                {
                                                   if(_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   this.§+!A§ = this.§24§.Normalize();
                                                   while(true)
                                                   {
                                                      §§push(this.§0"#§);
                                                      §§push(this.§24§.y);
                                                      §§push(this.§24§.x);
                                                      if(!(_loc4_ && param1))
                                                      {
                                                         §§push(-§§pop());
                                                      }
                                                      §§pop().Set(§§pop(),§§pop());
                                                      continue loop17;
                                                   }
                                                }
                                                else
                                                {
                                                   while(_loc3_)
                                                   {
                                                      §§push(this.§24§);
                                                      §§push(this.m_v2.x);
                                                      if(_loc3_ || param2)
                                                      {
                                                         §§push(this.m_v1.x);
                                                         if(_loc3_)
                                                         {
                                                            addr370:
                                                            §§push(§§pop() - §§pop());
                                                            §§push(this.m_v2.y);
                                                            if(!_loc4_)
                                                            {
                                                               addr375:
                                                               §§push(§§pop() - this.m_v1.y);
                                                            }
                                                            §§pop().Set(§§pop(),§§pop());
                                                            continue loop15;
                                                         }
                                                         §§goto(addr375);
                                                      }
                                                      §§goto(addr370);
                                                      continue loop15;
                                                   }
                                                   §§goto(addr417);
                                                   addr394:
                                                }
                                             }
                                          }
                                          while(!_loc4_)
                                          {
                                             continue loop2;
                                          }
                                          §§goto(addr445);
                                       }
                                       §§goto(addr429);
                                    }
                                    return;
                                 }
                                 §§goto(addr253);
                              }
                              addr85:
                              if(!(_loc3_ || param1))
                              {
                                 continue;
                              }
                              §§push(this.m_cornerDir2);
                              §§push(this.§0"#§.x);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(-§§pop());
                              }
                              §§push(this.§0"#§.y);
                              if(_loc3_ || _loc3_)
                              {
                                 §§push(-§§pop());
                              }
                              §§pop().Set(§§pop(),§§pop());
                              addr92:
                              if(_loc4_ && param1)
                              {
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       §§goto(addr85);
                                    }
                                    else
                                    {
                                       §§goto(addr350);
                                    }
                                 }
                                 continue;
                                 addr83:
                              }
                              §§goto(addr61);
                           }
                        }
                     }
                     continue loop0;
                  }
               }
            }
         }
         §§goto(addr424);
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
         var _loc17_:* = NaN;
         §§push(param2.p2.x);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(!_loc19_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc18_ || param3)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         _loc4_ = param3.R;
         §§push(param3.position.x);
         if(_loc18_ || param3)
         {
            §§push(_loc4_.col1.x);
            if(_loc18_ || this)
            {
               §§push(this.m_v1.x);
               if(_loc18_ || param3)
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc19_ && param2))
                  {
                     addr102:
                     §§push(_loc4_.col2.x);
                     if(_loc18_ || param1)
                     {
                        addr116:
                        §§push(§§pop() + §§pop() * this.m_v1.y);
                     }
                     §§goto(addr116);
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc19_ && param3))
                  {
                     addr126:
                     var _loc7_:Number = §§pop();
                     §§push(param3.position.y);
                     if(!(_loc19_ && param3))
                     {
                        §§push(_loc4_.col1.y);
                        if(_loc18_)
                        {
                           §§push(this.m_v1.x);
                           if(!(_loc19_ && param3))
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc19_ && this))
                              {
                                 addr160:
                                 §§push(_loc4_.col2.y);
                                 if(!_loc19_)
                                 {
                                    addr169:
                                    §§push(§§pop() + §§pop() * this.m_v1.y);
                                 }
                                 §§goto(addr169);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc18_ || param1)
                              {
                                 addr178:
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              §§push(param3.position.y);
                              if(_loc18_)
                              {
                                 §§push(_loc4_.col1.y);
                                 if(!_loc19_)
                                 {
                                    §§push(this.m_v2.x);
                                    if(!(_loc19_ && param3))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!(_loc19_ && param3))
                                       {
                                          §§push(_loc4_.col2.y);
                                          if(!_loc19_)
                                          {
                                             addr213:
                                             §§push(§§pop() * this.m_v2.y);
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc19_)
                                          {
                                             addr220:
                                             §§push(§§pop() + §§pop());
                                             if(_loc18_ || param1)
                                             {
                                                addr229:
                                                §§push(§§pop() - _loc8_);
                                                if(!(_loc19_ && param2))
                                                {
                                                   addr237:
                                                   §§push(Number(§§pop()));
                                                }
                                                var _loc9_:* = §§pop();
                                                §§push(param3.position.x);
                                                if(_loc18_ || param1)
                                                {
                                                   §§push(_loc4_.col1.x);
                                                   if(!(_loc19_ && param3))
                                                   {
                                                      §§push(this.m_v2.x);
                                                      if(!_loc19_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!_loc19_)
                                                         {
                                                            §§push(_loc4_.col2.x);
                                                            if(!(_loc19_ && param1))
                                                            {
                                                               addr281:
                                                               §§push(§§pop() + §§pop() * this.m_v2.y);
                                                               if(_loc19_)
                                                               {
                                                               }
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc18_)
                                                               {
                                                                  addr305:
                                                                  §§push(-§§pop());
                                                                  if(!(_loc19_ && param1))
                                                                  {
                                                                     addr304:
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc10_:* = §§pop();
                                                                  §§push(100 * Number.MIN_VALUE);
                                                                  if(!_loc19_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                                  var _loc11_:* = §§pop();
                                                                  §§push(_loc5_);
                                                                  if(_loc18_)
                                                                  {
                                                                     §§push(_loc9_);
                                                                     if(_loc18_ || param2)
                                                                     {
                                                                        §§push(§§pop() * §§pop());
                                                                        if(_loc18_ || this)
                                                                        {
                                                                           §§push(_loc6_);
                                                                           if(_loc18_ || param1)
                                                                           {
                                                                              §§push(§§pop() * _loc10_);
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                              }
                                                                              addr368:
                                                                              var _loc12_:* = §§pop();
                                                                              if(_loc18_ || param1)
                                                                              {
                                                                                 §§push(_loc11_);
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    if(§§pop() > §§pop())
                                                                                    {
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          §§push(param2.p1);
                                                                                          if(!(_loc19_ && param3))
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(_loc18_ || param3)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(!_loc19_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(_loc18_ || param3)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      if(!_loc19_)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         if(_loc18_ || param2)
                                                                                                         {
                                                                                                            addr842:
                                                                                                            §§push(param2.p1.y);
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               §§push(_loc8_);
                                                                                                               loop54:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  loop55:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr848:
                                                                                                                     loop49:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc14_ = §§pop();
                                                                                                                        loop50:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc13_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc14_);
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc10_);
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             addr835:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc19_)
                                                                                                                                                   {
                                                                                                                                                      continue loop49;
                                                                                                                                                   }
                                                                                                                                                   _loc15_ = §§pop();
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc19_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            loop8:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(_loc19_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop54;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop() <= §§pop());
                                                                                                                                                               if(_loc18_ || param3)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(§§pop())
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§pop();
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc19_ && param3)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop50;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                              if(_loc18_ || param2)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param2.§;"I§);
                                                                                                                                                                                 for(; !_loc19_; if(_loc19_ && this)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue;
                                                                                                                                                                                 },while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr680);
                                                                                                                                                                                 })
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                    if(_loc18_ || param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       if(_loc18_ || this)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() <= §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             while(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr433);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr763);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          addr760:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr767);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr772);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop8;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr789);
                                                                                                                                                                           }
                                                                                                                                                                           continue loop50;
                                                                                                                                                                        }
                                                                                                                                                                        addr808:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr760);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr808);
                                                                                                                                                            }
                                                                                                                                                            continue loop49;
                                                                                                                                                         }
                                                                                                                                                         continue loop55;
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
                                                                                                            §§goto(addr848);
                                                                                                         }
                                                                                                         §§goto(addr540);
                                                                                                      }
                                                                                                      §§goto(addr848);
                                                                                                   }
                                                                                                   §§goto(addr789);
                                                                                                }
                                                                                                §§goto(addr787);
                                                                                             }
                                                                                             §§goto(addr835);
                                                                                          }
                                                                                          §§goto(addr842);
                                                                                       }
                                                                                       §§goto(addr432);
                                                                                    }
                                                                                    addr433:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(false);
                                                                                       if(_loc18_)
                                                                                       {
                                                                                          if(!_loc19_)
                                                                                          {
                                                                                             if(_loc18_ || param2)
                                                                                             {
                                                                                                if(!(_loc19_ && param3))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                continue loop12;
                                                                                             }
                                                                                             continue loop11;
                                                                                          }
                                                                                          loop25:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop());
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                continue loop9;
                                                                                             }
                                                                                             if(§§pop())
                                                                                             {
                                                                                                break;
                                                                                             }
                                                                                             loop19:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!§§pop())
                                                                                                {
                                                                                                   continue loop56;
                                                                                                }
                                                                                                loop38:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc15_);
                                                                                                   loop39:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc18_ || this)
                                                                                                      {
                                                                                                         addr666:
                                                                                                         §§push(_loc12_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc19_)
                                                                                                            {
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                            addr717:
                                                                                                            loop24:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(!_loc19_)
                                                                                                               {
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() <= §§pop());
                                                                                                                     continue loop25;
                                                                                                                  }
                                                                                                                  addr767:
                                                                                                                  addr767:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     addr768:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc19_)
                                                                                                                  {
                                                                                                                     addr772:
                                                                                                                     §§push(_loc13_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc18_ || this)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(!(_loc18_ || param1))
                                                                                                                              {
                                                                                                                                 continue loop30;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                 addr788:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    addr789:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       _loc16_ = §§pop();
                                                                                                                                       addr790:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc11_);
                                                                                                                                          addr702:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc18_)
                                                                                                                                             {
                                                                                                                                                continue loop37;
                                                                                                                                             }
                                                                                                                                             §§push(-§§pop());
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(!_loc19_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      addr709:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                            continue loop24;
                                                                                                                                                         }
                                                                                                                                                         continue loop29;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr708:
                                                                                                                                                }
                                                                                                                                                else
                                                                                                                                                {
                                                                                                                                                   §§goto(addr768);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop30;
                                                                                                                           addr780:
                                                                                                                        }
                                                                                                                        continue loop31;
                                                                                                                     }
                                                                                                                     continue loop31;
                                                                                                                     addr772:
                                                                                                                  }
                                                                                                                  continue loop27;
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr666);
                                                                                                         }
                                                                                                         addr667:
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(!_loc18_)
                                                                                                            {
                                                                                                               continue loop7;
                                                                                                            }
                                                                                                            §§push(-§§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr767);
                                                                                                               addr570:
                                                                                                               §§push(_loc14_);
                                                                                                               if(_loc19_ && this)
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               if(!_loc18_)
                                                                                                               {
                                                                                                                  continue loop44;
                                                                                                               }
                                                                                                               _loc17_ = §§pop();
                                                                                                               if(_loc18_)
                                                                                                               {
                                                                                                                  if(_loc18_ || this)
                                                                                                                  {
                                                                                                                     §§push(param1.normal);
                                                                                                                     loop48:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc9_);
                                                                                                                        loop47:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc17_);
                                                                                                                           loop1:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                              addr532:
                                                                                                                              addr540:
                                                                                                                              loop2:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 addr533:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       break loop2;
                                                                                                                                    }
                                                                                                                                    break loop11;
                                                                                                                                 }
                                                                                                                                 continue loop1;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(param1.normal);
                                                                                                                                 if(_loc19_ && param3)
                                                                                                                                 {
                                                                                                                                    continue loop48;
                                                                                                                                 }
                                                                                                                                 §§push(_loc10_);
                                                                                                                                 if(!_loc19_)
                                                                                                                                 {
                                                                                                                                    if(!(_loc19_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc17_);
                                                                                                                                       if(!(_loc18_ || this))
                                                                                                                                       {
                                                                                                                                          continue loop1;
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() / §§pop());
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr532);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 if(!(_loc18_ || param1))
                                                                                                                                 {
                                                                                                                                    continue loop47;
                                                                                                                                 }
                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                 if(_loc19_ && param2)
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc18_ || param3)
                                                                                                                                 {
                                                                                                                                    if(_loc19_)
                                                                                                                                    {
                                                                                                                                       continue loop38;
                                                                                                                                    }
                                                                                                                                    if(!(_loc19_ && param2))
                                                                                                                                    {
                                                                                                                                       §§push(true);
                                                                                                                                       while(_loc19_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!(_loc18_ || this))
                                                                                                                                             {
                                                                                                                                                break loop25;
                                                                                                                                             }
                                                                                                                                             continue loop19;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       return §§pop();
                                                                                                                                       addr457:
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc18_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc16_);
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc18_ || this)
                                                                                                                                             {
                                                                                                                                                if(_loc18_ || param2)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc12_);
                                                                                                                                                   if(!(_loc19_ && this))
                                                                                                                                                   {
                                                                                                                                                      if(_loc19_ && param1)
                                                                                                                                                      {
                                                                                                                                                         continue loop28;
                                                                                                                                                      }
                                                                                                                                                      §§push(1 + _loc11_);
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(!(_loc19_ && this))
                                                                                                                                                         {
                                                                                                                                                            addr639:
                                                                                                                                                            if(!(_loc19_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc18_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr649);
                                                                                                                                                                  §§push(§§pop() <= §§pop());
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr780);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr708);
                                                                                                                                                         }
                                                                                                                                                         else
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr667);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr772);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr639);
                                                                                                                                                }
                                                                                                                                                §§goto(addr788);
                                                                                                                                             }
                                                                                                                                             §§goto(addr702);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       continue loop13;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    loop40:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(Math.sqrt(_loc9_ * _loc9_ + _loc10_ * _loc10_)));
                                                                                                                                       if(!(_loc19_ && param1))
                                                                                                                                       {
                                                                                                                                          if(!_loc18_)
                                                                                                                                          {
                                                                                                                                             continue loop39;
                                                                                                                                          }
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             if(_loc18_ || param3)
                                                                                                                                             {
                                                                                                                                                §§goto(addr570);
                                                                                                                                             }
                                                                                                                                             §§goto(addr789);
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             §§goto(addr597);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(_loc18_)
                                                                                                                                             {
                                                                                                                                                if(_loc18_)
                                                                                                                                                {
                                                                                                                                                   if(_loc18_ || param1)
                                                                                                                                                   {
                                                                                                                                                      _loc15_ = §§pop();
                                                                                                                                                      while(!(_loc18_ || param3))
                                                                                                                                                      {
                                                                                                                                                         continue loop43;
                                                                                                                                                      }
                                                                                                                                                      continue loop40;
                                                                                                                                                      addr692:
                                                                                                                                                   }
                                                                                                                                                   continue loop53;
                                                                                                                                                }
                                                                                                                                                §§goto(addr705);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr680:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr709);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr790);
                                                                                                               }
                                                                                                               §§goto(addr692);
                                                                                                            }
                                                                                                         }
                                                                                                         addr763:
                                                                                                      }
                                                                                                      §§goto(addr767);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§pop();
                                                                                             §§goto(addr727);
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§goto(addr457);
                                                                                       }
                                                                                       §§goto(addr649);
                                                                                    }
                                                                                    return §§pop();
                                                                                 }
                                                                                 §§goto(addr676);
                                                                              }
                                                                              §§goto(addr768);
                                                                           }
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!(_loc19_ && param1))
                                                                           {
                                                                              §§push(-§§pop());
                                                                              if(_loc18_ || param2)
                                                                              {
                                                                                 addr366:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              §§push(§§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr366);
                                                                     }
                                                                     §§goto(addr368);
                                                                  }
                                                                  §§goto(addr366);
                                                               }
                                                               §§goto(addr304);
                                                            }
                                                            §§goto(addr281);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(!(_loc19_ && this))
                                                         {
                                                            addr292:
                                                            §§goto(addr281);
                                                            §§push(_loc7_);
                                                         }
                                                         §§goto(addr305);
                                                      }
                                                   }
                                                   §§goto(addr281);
                                                }
                                                §§goto(addr292);
                                             }
                                             §§goto(addr237);
                                          }
                                          §§goto(addr229);
                                       }
                                       §§goto(addr220);
                                    }
                                    §§goto(addr213);
                                 }
                                 §§goto(addr220);
                              }
                              §§goto(addr229);
                           }
                           §§goto(addr169);
                        }
                        §§goto(addr160);
                     }
                     §§goto(addr178);
                  }
                  §§goto(addr126);
               }
               §§goto(addr116);
            }
            §§goto(addr102);
         }
         §§goto(addr126);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc8_:Boolean = true;
         var _loc9_:Boolean = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         if(_loc8_)
         {
            §§push(param2.position);
            loop0:
            while(true)
            {
               §§push(§§pop().x);
               if(!(_loc9_ && param1))
               {
                  §§push(_loc3_.col1);
                  loop1:
                  while(true)
                  {
                     §§push(§§pop().x);
                     addr564:
                     addr414:
                     while(true)
                     {
                        §§push(this.m_v1);
                        addr566:
                        while(true)
                        {
                           §§push(§§pop().x);
                           addr567:
                           while(true)
                           {
                              §§push(§§pop() * §§pop());
                              addr568:
                              while(true)
                              {
                                 §§push(_loc3_.col2);
                                 addr570:
                                 while(true)
                                 {
                                    §§push(§§pop().x);
                                    addr571:
                                    while(true)
                                    {
                                       §§push(this.m_v1);
                                       addr573:
                                       while(true)
                                       {
                                          §§push(§§pop().y);
                                          addr574:
                                          while(true)
                                          {
                                             §§push(§§pop() * §§pop());
                                             addr575:
                                             while(true)
                                             {
                                                §§push(§§pop() + §§pop());
                                                addr576:
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
                     }
                     loop29:
                     while(true)
                     {
                        if(_loc9_ && this)
                        {
                           continue loop1;
                        }
                        §§push(§§pop().x);
                        loop30:
                        while(true)
                        {
                           §§push(this.m_v2);
                           loop31:
                           while(true)
                           {
                              §§push(§§pop().x);
                              addr425:
                              loop32:
                              while(_loc8_ || _loc3_)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop33:
                                 while(true)
                                 {
                                    §§push(_loc3_.col2);
                                    loop34:
                                    while(!_loc9_)
                                    {
                                       §§push(§§pop().x);
                                       loop35:
                                       for(; !(_loc9_ && this); if(_loc9_ && this)
                                       {
                                          continue;
                                       },if(_loc9_ && _loc3_)
                                       {
                                          continue loop32;
                                       },if(!(_loc9_ && this))
                                       {
                                          §§goto(addr339);
                                          §§push(§§pop() * §§pop());
                                       },§§goto(addr571))
                                       {
                                          §§push(this.m_v2);
                                          loop36:
                                          while(true)
                                          {
                                             §§push(§§pop().y);
                                             addr448:
                                             addr526:
                                             loop37:
                                             while(!(_loc9_ && param2))
                                             {
                                                §§push(§§pop() * §§pop());
                                                loop38:
                                                for(; _loc8_ || this; while(true)
                                                {
                                                   if(_loc8_ || param1)
                                                   {
                                                      if(!_loc9_)
                                                      {
                                                         §§goto(addr379);
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      break;
                                                   }
                                                   continue loop38;
                                                },while(_loc8_)
                                                {
                                                   §§push(this.m_v1);
                                                   if(_loc8_)
                                                   {
                                                      §§push(§§pop().y);
                                                      break loop37;
                                                   }
                                                   §§goto(addr573);
                                                },§§goto(addr567))
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   loop39:
                                                   while(_loc8_ || _loc3_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         addr473:
                                                         addr399:
                                                         while(true)
                                                         {
                                                            _loc6_ = §§pop();
                                                            addr474:
                                                            addr539:
                                                            loop42:
                                                            while(true)
                                                            {
                                                               §§push(param2.position);
                                                               if(_loc8_ || this)
                                                               {
                                                                  addr250:
                                                                  if(_loc8_ || param2)
                                                                  {
                                                                     continue loop0;
                                                                  }
                                                                  addr478:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     if(_loc8_)
                                                                     {
                                                                        §§push(_loc3_.col1);
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().y);
                                                                           addr484:
                                                                           while(_loc8_ || param1)
                                                                           {
                                                                              §§push(this.m_v1);
                                                                              if(!(_loc9_ && _loc3_))
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 break loop38;
                                                                              }
                                                                              §§goto(addr566);
                                                                           }
                                                                           §§goto(addr564);
                                                                        }
                                                                        addr483:
                                                                     }
                                                                     break loop42;
                                                                     §§goto(addr250);
                                                                  }
                                                               }
                                                               addr411:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr412:
                                                                  while(true)
                                                                  {
                                                                     continue loop29;
                                                                  }
                                                                  continue loop42;
                                                               }
                                                            }
                                                            while(true)
                                                            {
                                                               _loc5_ = §§pop();
                                                               addr540:
                                                               while(true)
                                                               {
                                                                  §§goto(addr411);
                                                               }
                                                            }
                                                         }
                                                         loop48:
                                                         while(_loc8_ || param1)
                                                         {
                                                            _loc7_ = §§pop();
                                                            loop49:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_);
                                                               loop50:
                                                               while(!_loc9_)
                                                               {
                                                                  §§push(_loc6_);
                                                                  while(true)
                                                                  {
                                                                     if(_loc8_)
                                                                     {
                                                                        if(_loc9_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        if(!(_loc9_ && _loc3_))
                                                                        {
                                                                           if(_loc8_)
                                                                           {
                                                                              addr213:
                                                                              if(§§pop() < §§pop())
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param1.§8"S§);
                                                                                    addr237:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc4_);
                                                                                       addr238:
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr239:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param1.§4B§);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr235:
                                                                              }
                                                                              else
                                                                              {
                                                                                 §§push(param1.§8"S§);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc6_);
                                                                                    addr208:
                                                                                    while(true)
                                                                                    {
                                                                                       §§pop().x = §§pop();
                                                                                       addr209:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.§4B§);
                                                                                          addr185:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!(_loc9_ && this))
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   continue loop49;
                                                                                                }
                                                                                                addr193:
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr207:
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc6_);
                                                                                 addr214:
                                                                                 while(true)
                                                                                 {
                                                                                    §§pop().x = §§pop();
                                                                                    addr215:
                                                                                    while(true)
                                                                                    {
                                                                                       loop58:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc5_);
                                                                                          if(_loc9_ && _loc3_)
                                                                                          {
                                                                                             continue loop50;
                                                                                          }
                                                                                          addr133:
                                                                                          if(_loc8_ || this)
                                                                                          {
                                                                                             if(!_loc9_)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                if(_loc8_)
                                                                                                {
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(!_loc9_)
                                                                                                         {
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                         continue loop39;
                                                                                                      }
                                                                                                      continue loop33;
                                                                                                      addr379:
                                                                                                   }
                                                                                                   if(_loc9_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc3_.col2);
                                                                                                         if(_loc9_ && param1)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(§§pop().y);
                                                                                                         if(!(_loc9_ && param2))
                                                                                                         {
                                                                                                            continue loop36;
                                                                                                         }
                                                                                                         continue loop38;
                                                                                                      }
                                                                                                      continue loop34;
                                                                                                      addr339:
                                                                                                   }
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      §§push(param1.§8"S§);
                                                                                                      if(_loc8_ || this)
                                                                                                      {
                                                                                                         if(_loc8_)
                                                                                                         {
                                                                                                            if(_loc8_)
                                                                                                            {
                                                                                                               §§push(_loc7_);
                                                                                                               if(_loc8_ || param2)
                                                                                                               {
                                                                                                                  §§pop().y = §§pop();
                                                                                                                  loop59:
                                                                                                                  for(; _loc8_ || param2; §§pop().y = §§pop(),if(!(_loc8_ || _loc3_))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  },if(_loc8_)
                                                                                                                  {
                                                                                                                     if(_loc8_ || this)
                                                                                                                     {
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              §§goto(addr31);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr540);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr474);
                                                                                                                        }
                                                                                                                        §§goto(addr411);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr209);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr121);
                                                                                                                  },§§goto(addr478))
                                                                                                                  {
                                                                                                                     if(_loc8_)
                                                                                                                     {
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(param1.§4B§);
                                                                                                                           if(!(_loc9_ && this))
                                                                                                                           {
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(_loc5_);
                                                                                                                                 if(!(_loc9_ && param2))
                                                                                                                                 {
                                                                                                                                    continue loop59;
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(_loc9_)
                                                                                                                                    {
                                                                                                                                       break loop58;
                                                                                                                                    }
                                                                                                                                    if(_loc8_)
                                                                                                                                    {
                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                       while(_loc9_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr478);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       addr31:
                                                                                                                                       return;
                                                                                                                                       addr121:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 addr116:
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr185);
                                                                                                                              }
                                                                                                                              §§goto(addr214);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                              }
                                                                                                                              addr115:
                                                                                                                           }
                                                                                                                           §§goto(addr116);
                                                                                                                        }
                                                                                                                        addr111:
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr150:
                                                                                                                        if(_loc9_ && param1)
                                                                                                                        {
                                                                                                                           continue loop49;
                                                                                                                        }
                                                                                                                        if(!(_loc8_ || this))
                                                                                                                        {
                                                                                                                           continue loop58;
                                                                                                                        }
                                                                                                                        if(!_loc9_)
                                                                                                                        {
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              addr171:
                                                                                                                              §§push(param1.§8"S§);
                                                                                                                              §§push(_loc5_);
                                                                                                                              if(_loc8_ || param1)
                                                                                                                              {
                                                                                                                                 if(!_loc9_)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§goto(addr208);
                                                                                                                              }
                                                                                                                              §§goto(addr213);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr235);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr239);
                                                                                                                     }
                                                                                                                     §§goto(addr213);
                                                                                                                  }
                                                                                                                  §§goto(addr115);
                                                                                                                  §§push(param1.§4B§);
                                                                                                               }
                                                                                                               §§goto(addr171);
                                                                                                            }
                                                                                                            §§goto(addr237);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr207);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr171);
                                                                                                   }
                                                                                                   §§goto(addr150);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr221);
                                                                                                }
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr473);
                                                                                             }
                                                                                             §§goto(addr474);
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             loop47:
                                                                                             while(true)
                                                                                             {
                                                                                                if(!(_loc9_ && this))
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      break loop50;
                                                                                                   }
                                                                                                   addr577:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      break loop47;
                                                                                                   }
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr133);
                                                                                             }
                                                                                             addr389:
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             _loc4_ = §§pop();
                                                                                             §§goto(addr579);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr193);
                                                                                       continue loop50;
                                                                                    }
                                                                                 }
                                                                              }
                                                                              addr213:
                                                                           }
                                                                           else
                                                                           {
                                                                              §§goto(addr568);
                                                                           }
                                                                        }
                                                                     }
                                                                     else
                                                                     {
                                                                        while(_loc8_ || param1)
                                                                        {
                                                                           §§push(this.m_v2);
                                                                           if(!_loc9_)
                                                                           {
                                                                              §§push(§§pop().x);
                                                                              if(_loc8_ || param1)
                                                                              {
                                                                                 continue loop35;
                                                                              }
                                                                              continue loop38;
                                                                           }
                                                                           continue loop31;
                                                                        }
                                                                        while(_loc8_ || param2)
                                                                        {
                                                                           §§push(_loc3_.col2);
                                                                           break loop34;
                                                                        }
                                                                        §§goto(addr576);
                                                                        addr502:
                                                                        addr298:
                                                                     }
                                                                     §§goto(addr484);
                                                                  }
                                                                  continue loop30;
                                                               }
                                                               continue loop48;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc8_ || _loc3_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr539);
                                                   }
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr502);
                                                   §§goto(addr456);
                                                }
                                                addr456:
                                             }
                                             while(true)
                                             {
                                                if(!_loc9_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   break loop32;
                                                }
                                                break;
                                                §§goto(addr448);
                                             }
                                             §§goto(addr574);
                                          }
                                       }
                                       §§goto(addr575);
                                    }
                                    while(!(_loc9_ && this))
                                    {
                                       §§goto(addr519);
                                       §§push(§§pop().y);
                                    }
                                    §§goto(addr570);
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr530);
                                 §§goto(addr425);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr577);
            }
         }
         §§goto(addr111);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            param1.§'"N§ = 0;
         }
         while(true)
         {
            param1.center.SetV(this.m_v1);
            while(!(_loc4_ && param1))
            {
               param1.§@!6§ = 0;
               if(_loc3_)
               {
                  return;
               }
            }
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc10_:Boolean = false;
         var _loc11_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.x);
         if(_loc11_ || param2)
         {
            §§push(param2);
            if(!(_loc10_ && param2))
            {
               addr36:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!_loc10_)
               {
                  addr40:
                  §§push(§§pop() * param2);
               }
               var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
               var _loc6_:b2Vec2 = b2Math.§^T§(param3,this.m_v1);
               var _loc7_:b2Vec2 = b2Math.§^T§(param3,this.m_v2);
               §§push(b2Math.§[!3§(param1,_loc6_));
               if(!(_loc10_ && param3))
               {
                  §§push(§§pop() - param2);
                  if(_loc11_)
                  {
                     addr74:
                     §§push(Number(§§pop()));
                  }
                  var _loc8_:* = §§pop();
                  §§push(b2Math.§[!3§(param1,_loc7_));
                  if(!_loc10_)
                  {
                     §§push(§§pop() - param2);
                     if(_loc11_ || param2)
                     {
                        addr91:
                        §§push(Number(§§pop()));
                     }
                     var _loc9_:* = §§pop();
                     if(_loc11_ || param3)
                     {
                        §§push(_loc8_);
                        if(_loc11_)
                        {
                           §§push(0);
                           if(_loc11_)
                           {
                              if(§§pop() <= §§pop())
                              {
                                 §§push(_loc9_);
                                 loop0:
                                 while(true)
                                 {
                                    §§push(0);
                                    if(_loc11_)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc11_)
                                          {
                                             if(!_loc10_)
                                             {
                                                if(_loc11_)
                                                {
                                                   §§push(_loc7_);
                                                   §§push(_loc9_);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(-§§pop());
                                                      if(!_loc10_)
                                                      {
                                                         §§push(_loc8_);
                                                         if(!(_loc10_ && this))
                                                         {
                                                            §§push(_loc9_);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc11_ || param1)
                                                               {
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     addr439:
                                                                     §§push(_loc6_.x);
                                                                     if(_loc11_)
                                                                     {
                                                                        addr443:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!_loc10_)
                                                                        {
                                                                           addr446:
                                                                           §§push(_loc8_);
                                                                           if(!_loc10_)
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc11_ || param3)
                                                                              {
                                                                                 §§push(§§pop() - _loc9_);
                                                                                 if(!(_loc10_ && param3))
                                                                                 {
                                                                                    addr477:
                                                                                    addr478:
                                                                                    addr466:
                                                                                    §§push(§§pop() / §§pop());
                                                                                    if(_loc11_ || param3)
                                                                                    {
                                                                                       addr474:
                                                                                       §§push(_loc7_.x);
                                                                                    }
                                                                                    §§pop().x = §§pop() + §§pop();
                                                                                    loop3:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc11_ || param3)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          §§push(_loc9_);
                                                                                          if(_loc11_ || param1)
                                                                                          {
                                                                                             §§push(-§§pop());
                                                                                             if(_loc11_ || param1)
                                                                                             {
                                                                                                §§push(_loc8_);
                                                                                                if(!(_loc10_ && param1))
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(!(_loc10_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(!(_loc10_ && param2))
                                                                                                      {
                                                                                                         addr337:
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(!(_loc10_ && param3))
                                                                                                         {
                                                                                                            addr345:
                                                                                                            §§push(_loc6_.y);
                                                                                                            if(_loc11_ || param2)
                                                                                                            {
                                                                                                               addr354:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc11_ || param3)
                                                                                                               {
                                                                                                                  §§push(_loc8_);
                                                                                                                  if(!(_loc10_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc8_);
                                                                                                                     if(!_loc10_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - _loc9_);
                                                                                                                        if(_loc10_ && param1)
                                                                                                                        {
                                                                                                                        }
                                                                                                                        addr394:
                                                                                                                        §§pop().y = §§pop() + §§pop() * §§pop();
                                                                                                                        addr393:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           addr244:
                                                                                                                           loop5:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(param4);
                                                                                                                              §§push(_loc5_.x);
                                                                                                                              if(!(_loc10_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(_loc6_.x);
                                                                                                                                 if(_loc11_ || param1)
                                                                                                                                 {
                                                                                                                                    addr679:
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    if(_loc11_)
                                                                                                                                    {
                                                                                                                                       addr269:
                                                                                                                                       §§push(§§pop() + _loc7_.x);
                                                                                                                                       if(_loc11_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() / 3);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                    loop6:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(!_loc11_)
                                                                                                                                       {
                                                                                                                                          continue loop5;
                                                                                                                                       }
                                                                                                                                       if(!_loc10_)
                                                                                                                                       {
                                                                                                                                          §§push(param4);
                                                                                                                                          §§push(_loc5_.y);
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_.y);
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                if(!_loc11_)
                                                                                                                                                {
                                                                                                                                                   continue;
                                                                                                                                                }
                                                                                                                                                addr221:
                                                                                                                                                §§push(_loc7_.y);
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / 3);
                                                                                                                                             }
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          §§goto(addr221);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             break loop6;
                                                                                                                                          }
                                                                                                                                          addr678:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(0);
                                                                                                                                       addr680:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(§§pop() > §§pop())
                                                                                                                                          {
                                                                                                                                             break loop3;
                                                                                                                                          }
                                                                                                                                          loop9:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc6_);
                                                                                                                                             §§push(_loc9_);
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(-§§pop());
                                                                                                                                                if(_loc11_ || param3)
                                                                                                                                                {
                                                                                                                                                   addr593:
                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                   if(_loc11_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                      if(_loc11_)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            addr607:
                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                            if(_loc11_ || param2)
                                                                                                                                                            {
                                                                                                                                                               addr615:
                                                                                                                                                               §§push(_loc6_.x);
                                                                                                                                                               if(_loc11_)
                                                                                                                                                               {
                                                                                                                                                                  addr619:
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  if(!(_loc10_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     addr627:
                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                     if(_loc11_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_);
                                                                                                                                                                        if(!(_loc10_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() - _loc9_);
                                                                                                                                                                           if(!_loc10_)
                                                                                                                                                                           {
                                                                                                                                                                              addr669:
                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                              if(!(_loc10_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 addr665:
                                                                                                                                                                                 §§push(_loc7_.x);
                                                                                                                                                                              }
                                                                                                                                                                              §§pop().x = §§pop() + §§pop();
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc6_);
                                                                                                                                                                                 §§push(_loc9_);
                                                                                                                                                                                 if(_loc11_ || this)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(-§§pop());
                                                                                                                                                                                    if(_loc11_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc8_);
                                                                                                                                                                                       if(!_loc10_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc9_);
                                                                                                                                                                                          if(_loc11_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                             if(_loc11_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                if(_loc11_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr522:
                                                                                                                                                                                                   §§push(_loc6_.y);
                                                                                                                                                                                                   if(_loc11_ || param2)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr571:
                                                                                                                                                                                                   §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                   addr570:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc11_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop5;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop9;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr572:
                                                                                                                                                                                                }
                                                                                                                                                                                                addr539:
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(!(_loc10_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                   if(!(_loc10_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                                                                                                                      if(_loc11_ || this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr564:
                                                                                                                                                                                                         §§push(§§pop() / §§pop());
                                                                                                                                                                                                         if(!_loc10_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr567:
                                                                                                                                                                                                            §§push(_loc7_.y);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr570);
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr564);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr567);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc11_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr539);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr571);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr564);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr571);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr522);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr539);
                                                                                                                                                                                 §§goto(addr669);
                                                                                                                                                                              }
                                                                                                                                                                              addr670:
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr669);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr665);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr627);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr619);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr669);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr607);
                                                                                                                                                }
                                                                                                                                                §§goto(addr615);
                                                                                                                                             }
                                                                                                                                             §§goto(addr593);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    addr679:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr269);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                     if(_loc10_ && param3)
                                                                                                                     {
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr393);
                                                                                                                  §§push(_loc7_.y);
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr394);
                                                                                                      }
                                                                                                      §§goto(addr354);
                                                                                                   }
                                                                                                   §§goto(addr394);
                                                                                                }
                                                                                                §§goto(addr337);
                                                                                             }
                                                                                             §§goto(addr345);
                                                                                          }
                                                                                          §§goto(addr394);
                                                                                       }
                                                                                       break;
                                                                                       if(_loc11_ || param1)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(0.5);
                                                                                             if(!(_loc10_ && param3))
                                                                                             {
                                                                                                if(_loc11_ || param3)
                                                                                                {
                                                                                                   §§push(_loc6_.x);
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc5_.x);
                                                                                                      if(!(_loc10_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            addr138:
                                                                                                            §§push(_loc7_.y);
                                                                                                            if(!_loc10_)
                                                                                                            {
                                                                                                               §§push(_loc5_.y);
                                                                                                               if(_loc11_)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc10_ && param3))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        addr162:
                                                                                                                        §§push(_loc6_.y);
                                                                                                                        if(_loc11_ || this)
                                                                                                                        {
                                                                                                                           addr171:
                                                                                                                           §§push(_loc5_.y);
                                                                                                                           if(_loc11_ || this)
                                                                                                                           {
                                                                                                                              addr180:
                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                              if(!(_loc10_ && this))
                                                                                                                              {
                                                                                                                                 addr201:
                                                                                                                                 §§push(_loc7_.x);
                                                                                                                                 if(!(_loc10_ && param1))
                                                                                                                                 {
                                                                                                                                    addr197:
                                                                                                                                    §§push(§§pop() - _loc5_.x);
                                                                                                                                 }
                                                                                                                                 §§push(§§pop() * (§§pop() - §§pop() * §§pop()));
                                                                                                                                 if(!_loc10_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 continue loop0;
                                                                                                                              }
                                                                                                                              §§goto(addr201);
                                                                                                                           }
                                                                                                                           §§goto(addr197);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr201);
                                                                                                                  }
                                                                                                                  §§goto(addr171);
                                                                                                               }
                                                                                                               §§goto(addr180);
                                                                                                            }
                                                                                                            §§goto(addr201);
                                                                                                         }
                                                                                                         §§goto(addr162);
                                                                                                      }
                                                                                                      §§goto(addr201);
                                                                                                   }
                                                                                                   §§goto(addr138);
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr679);
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr201);
                                                                                          }
                                                                                          return §§pop();
                                                                                          addr243:
                                                                                       }
                                                                                    }
                                                                                    return 0;
                                                                                    addr479:
                                                                                 }
                                                                              }
                                                                              §§goto(addr477);
                                                                              §§push(§§pop() * §§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr478);
                                                                     }
                                                                     §§goto(addr474);
                                                                  }
                                                                  §§goto(addr477);
                                                               }
                                                               §§goto(addr443);
                                                            }
                                                            §§goto(addr466);
                                                         }
                                                         §§goto(addr477);
                                                      }
                                                      §§goto(addr446);
                                                   }
                                                   §§goto(addr439);
                                                }
                                                §§goto(addr670);
                                             }
                                             §§goto(addr572);
                                          }
                                          §§goto(addr479);
                                       }
                                       §§goto(addr244);
                                    }
                                    §§goto(addr680);
                                 }
                              }
                              §§goto(addr678);
                           }
                           §§goto(addr680);
                        }
                        §§goto(addr679);
                     }
                     §§goto(addr243);
                  }
                  §§goto(addr91);
               }
               §§goto(addr74);
            }
            §§goto(addr40);
         }
         §§goto(addr36);
      }
      
      public function §%x§() : Number
      {
         return this.§+!A§;
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
      
      public function §,!R§() : b2Vec2
      {
         return this.§0"#§;
      }
      
      public function §9"M§() : b2Vec2
      {
         return this.§24§;
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
      
      public function §;!N§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!(_loc4_ && this))
         {
            §§push(_loc2_.col1.x);
            if(!(_loc4_ && _loc3_))
            {
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && _loc2_))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc4_ && _loc2_))
                  {
                     §§push(_loc2_.col2.x);
                     if(_loc3_)
                     {
                        §§push(this.m_coreV1);
                        if(_loc3_)
                        {
                           §§push(§§pop().y);
                           if(_loc3_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(!_loc4_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(!(_loc4_ && _loc2_))
                                 {
                                    addr98:
                                    §§push(§§pop() + §§pop());
                                    §§push(param1.position.y);
                                    if(_loc3_)
                                    {
                                       addr103:
                                       §§push(_loc2_.col1.y);
                                       if(_loc3_)
                                       {
                                          addr110:
                                          §§push(this.m_coreV1.x);
                                          if(!(_loc4_ && param1))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc3_ || param1)
                                             {
                                                addr136:
                                                §§push(_loc2_.col2.y);
                                                if(_loc3_ || this)
                                                {
                                                   addr150:
                                                   §§push(§§pop() + §§pop() * this.m_coreV1.y);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr152);
                                          }
                                          §§goto(addr150);
                                       }
                                    }
                                    §§goto(addr152);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr150);
                        }
                     }
                     §§goto(addr110);
                  }
                  addr152:
                  return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
               }
               §§goto(addr110);
            }
            §§goto(addr103);
         }
         §§goto(addr98);
      }
      
      public function §5!`§() : b2EdgeShape
      {
         return this.§8!C§;
      }
      
      public function §+!z§() : b2EdgeShape
      {
         return this.§9!M§;
      }
      
      public function §7!0§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = true;
         var _loc10_:Boolean = false;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc10_ && param3))
         {
            §§push(_loc4_.col1.x);
            if(_loc9_ || this)
            {
               §§push(this.m_coreV1.x);
               if(!_loc10_)
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc10_)
                  {
                     addr48:
                     §§push(_loc4_.col2.x);
                     if(_loc9_ || param2)
                     {
                        addr62:
                        §§push(§§pop() + §§pop() * this.m_coreV1.y);
                     }
                     §§goto(addr62);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc9_ || param3)
                  {
                     addr72:
                     var _loc5_:Number = §§pop();
                     §§push(param1.position.y);
                     if(!(_loc10_ && param3))
                     {
                        §§push(_loc4_.col1.y);
                        if(!(_loc10_ && param3))
                        {
                           §§push(this.m_coreV1.x);
                           if(!_loc10_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc9_)
                              {
                                 addr101:
                                 §§push(_loc4_.col2.y);
                                 if(_loc9_)
                                 {
                                    addr110:
                                    §§push(§§pop() + §§pop() * this.m_coreV1.y);
                                 }
                                 §§goto(addr110);
                              }
                              §§push(§§pop() + §§pop());
                              if(!_loc10_)
                              {
                                 addr115:
                                 var _loc6_:Number = §§pop();
                                 §§push(param1.position.x);
                                 if(_loc9_ || param2)
                                 {
                                    §§push(_loc4_.col1.x);
                                    if(!_loc10_)
                                    {
                                       §§push(this.m_coreV2.x);
                                       if(!_loc10_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(_loc9_)
                                          {
                                             addr139:
                                             §§push(_loc4_.col2.x);
                                             if(_loc9_ || this)
                                             {
                                                addr149:
                                                §§push(§§pop() * this.m_coreV2.y);
                                             }
                                             §§push(§§pop() + §§pop());
                                          }
                                          §§push(§§pop() + §§pop());
                                          if(!_loc10_)
                                          {
                                             addr158:
                                             var _loc7_:Number = §§pop();
                                             §§push(param1.position.y);
                                             if(!_loc10_)
                                             {
                                                §§push(_loc4_.col1.y);
                                                if(_loc9_ || param1)
                                                {
                                                   §§push(this.m_coreV2.x);
                                                   if(!_loc10_)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr192:
                                                         §§push(_loc4_.col2.y);
                                                         if(!_loc10_)
                                                         {
                                                            addr197:
                                                            §§push(§§pop() * this.m_coreV2.y);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc10_ && param1))
                                                      {
                                                         addr211:
                                                         var _loc8_:Number = §§pop();
                                                         if(_loc9_)
                                                         {
                                                            §§push(_loc5_);
                                                            if(!_loc10_)
                                                            {
                                                               §§push(param2);
                                                               if(_loc9_ || param2)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc9_ || this)
                                                                  {
                                                                     addr312:
                                                                     §§push(_loc6_);
                                                                     if(!_loc10_)
                                                                     {
                                                                        §§push(param3);
                                                                        if(!(_loc10_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc9_)
                                                                           {
                                                                              addr337:
                                                                              §§push(§§pop() + §§pop());
                                                                              §§push(_loc7_);
                                                                              if(_loc9_)
                                                                              {
                                                                                 addr340:
                                                                                 §§push(param2);
                                                                                 if(_loc9_)
                                                                                 {
                                                                                    addr352:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!_loc10_)
                                                                                    {
                                                                                       §§push(_loc8_);
                                                                                       if(!_loc10_)
                                                                                       {
                                                                                          §§push(§§pop() * param3);
                                                                                       }
                                                                                    }
                                                                                    if(§§pop() <= §§pop())
                                                                                    {
                                                                                       §§push(this.§=!#§);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          loop1:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                if(_loc9_)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   loop2:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(_loc9_ || param1)
                                                                                                      {
                                                                                                         if(!_loc10_)
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§=!#§);
                                                                                                            }
                                                                                                            addr272:
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(this.§=!#§);
                                                                                                               loop3:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc5_);
                                                                                                                  addr356:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                     addr357:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(this.§=!#§);
                                                                                                                        continue loop3;
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            addr353:
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_);
                                                                                                            if(_loc9_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            continue loop1;
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr285);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr356);
                                                                                             }
                                                                                             §§goto(addr284);
                                                                                          }
                                                                                          if(_loc9_ || param3)
                                                                                          {
                                                                                             if(_loc10_)
                                                                                             {
                                                                                                §§goto(addr276);
                                                                                             }
                                                                                             return §§pop();
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr353);
                                                                                 }
                                                                              }
                                                                              §§goto(addr352);
                                                                           }
                                                                           §§goto(addr340);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                     }
                                                                     §§goto(addr352);
                                                                  }
                                                                  §§goto(addr337);
                                                               }
                                                               §§goto(addr340);
                                                            }
                                                            §§goto(addr312);
                                                         }
                                                         §§goto(addr272);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr197);
                                                }
                                                §§goto(addr192);
                                             }
                                             §§goto(addr211);
                                          }
                                          §§goto(addr158);
                                       }
                                       §§goto(addr149);
                                    }
                                    §§goto(addr139);
                                 }
                                 §§goto(addr158);
                              }
                              §§goto(addr115);
                           }
                           §§goto(addr110);
                        }
                        §§goto(addr101);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr72);
               }
               §§goto(addr62);
            }
            §§goto(addr48);
         }
         §§goto(addr72);
      }
      
      b2internal function §4!Y§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(_loc6_)
         {
            this.§9!M§ = param1;
            while(true)
            {
               this.m_coreV1 = param2;
               addr50:
               if(_loc5_ && param2)
               {
                  continue;
               }
               return;
               addr57:
            }
         }
         while(true)
         {
            this.m_cornerDir1 = param3;
            while(_loc6_ || param1)
            {
               this.m_cornerConvex1 = param4;
               if(_loc5_)
               {
                  continue;
               }
               §§goto(addr50);
            }
         }
         §§goto(addr57);
      }
      
      b2internal function §^V§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(_loc5_ || param3)
         {
            this.§8!C§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               while(true)
               {
                  this.m_cornerDir2 = param3;
                  §§goto(addr68);
               }
            }
         }
         addr68:
         while(true)
         {
            this.m_cornerConvex2 = param4;
            if(!(_loc6_ && param3))
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
   }
}
