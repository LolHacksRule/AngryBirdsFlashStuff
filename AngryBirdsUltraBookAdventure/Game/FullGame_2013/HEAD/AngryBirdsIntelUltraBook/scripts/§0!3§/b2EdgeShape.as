package §0!3§
{
   import §!m§.b2AABB;
   import §!m§.b2RayCastInput;
   import §!m§.b2RayCastOutput;
   import §+!g§.b2Settings;
   import §+!g§.b2internal;
   import §>!8§.b2Mat22;
   import §>!8§.b2Math;
   import §>!8§.b2Transform;
   import §>!8§.b2Vec2;
   
   use namespace b2internal;
   
   public class b2EdgeShape extends b2Shape
   {
       
      
      private var §[!E§:b2Vec2;
      
      b2internal var m_v1:b2Vec2;
      
      b2internal var m_v2:b2Vec2;
      
      b2internal var m_coreV1:b2Vec2;
      
      b2internal var m_coreV2:b2Vec2;
      
      b2internal var §6M§:Number;
      
      b2internal var §+i§:b2Vec2;
      
      b2internal var §=d§:b2Vec2;
      
      b2internal var m_cornerDir1:b2Vec2;
      
      b2internal var m_cornerDir2:b2Vec2;
      
      b2internal var m_cornerConvex1:Boolean;
      
      b2internal var m_cornerConvex2:Boolean;
      
      b2internal var §[0§:b2EdgeShape;
      
      b2internal var §8H§:b2EdgeShape;
      
      public function b2EdgeShape(param1:b2Vec2, param2:b2Vec2)
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§[!E§ = new b2Vec2();
            while(true)
            {
               this.m_v1 = new b2Vec2();
               loop1:
               while(true)
               {
                  this.m_v2 = new b2Vec2();
                  addr462:
                  while(true)
                  {
                     this.m_coreV1 = new b2Vec2();
                     addr456:
                     while(true)
                     {
                        this.m_coreV2 = new b2Vec2();
                        continue loop1;
                     }
                  }
               }
               if(!(_loc3_ || param2))
               {
                  continue;
               }
               §§push(this.§=d§);
               §§push(this.m_v2.x);
               if(!_loc4_)
               {
                  §§push(this.m_v1.x);
                  if(_loc3_)
                  {
                     addr311:
                     §§push(§§pop() - §§pop());
                     §§push(this.m_v2.y);
                     if(_loc3_ || _loc3_)
                     {
                        addr321:
                        §§push(§§pop() - this.m_v1.y);
                     }
                     §§pop().Set(§§pop(),§§pop());
                     §§goto(addr327);
                  }
                  §§goto(addr321);
               }
               §§goto(addr311);
            }
         }
         §§goto(addr47);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         return false;
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc18_:Boolean = false;
         var _loc19_:Boolean = true;
         var _loc4_:b2Mat22 = null;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:Number = NaN;
         §§push(param2.p2.x);
         if(_loc19_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc19_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.p2.y);
         if(_loc19_)
         {
            §§push(§§pop() - param2.p1.y);
            if(!_loc18_)
            {
               addr59:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            _loc4_ = param3.R;
            §§push(param3.position.x);
            if(!(_loc18_ && param1))
            {
               §§push(_loc4_.col1.x);
               if(_loc19_ || param2)
               {
                  §§push(this.m_v1.x);
                  if(_loc19_ || param2)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc18_ && param2))
                     {
                        addr103:
                        §§push(_loc4_.col2.x);
                        if(_loc19_)
                        {
                           addr112:
                           §§push(§§pop() + §§pop() * this.m_v1.y);
                        }
                        §§goto(addr112);
                     }
                     §§push(§§pop() + §§pop());
                     if(_loc19_ || param2)
                     {
                        addr122:
                        var _loc7_:Number = §§pop();
                        §§push(param3.position.y);
                        if(!(_loc18_ && this))
                        {
                           §§push(_loc4_.col1.y);
                           if(!_loc18_)
                           {
                              §§push(this.m_v1.x);
                              if(_loc19_ || param2)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc19_)
                                 {
                                    addr166:
                                    §§push(_loc4_.col2.y);
                                    if(_loc19_ || param2)
                                    {
                                       addr161:
                                       §§push(§§pop() * this.m_v1.y);
                                    }
                                    §§push(§§pop() + (§§pop() + §§pop()));
                                    if(!(_loc18_ && param2))
                                    {
                                       addr174:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc8_:* = §§pop();
                                    §§push(param3.position.y);
                                    if(!_loc18_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!_loc18_)
                                       {
                                          §§push(this.m_v2.x);
                                          if(_loc19_ || param1)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!(_loc18_ && param2))
                                             {
                                                §§push(_loc4_.col2.y);
                                                if(_loc19_ || param2)
                                                {
                                                   addr214:
                                                   §§push(§§pop() * this.m_v2.y);
                                                }
                                                §§push(§§pop() + §§pop());
                                                if(!(_loc18_ && param1))
                                                {
                                                   addr238:
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc18_)
                                                   {
                                                      §§push(_loc8_);
                                                   }
                                                   var _loc9_:Number = §§pop();
                                                   §§push(param3.position.x);
                                                   if(_loc19_ || param1)
                                                   {
                                                      §§push(_loc4_.col1.x);
                                                      if(_loc19_ || param2)
                                                      {
                                                         §§push(this.m_v2.x);
                                                         if(_loc19_ || this)
                                                         {
                                                            addr295:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc19_)
                                                            {
                                                               §§push(_loc4_.col2.x);
                                                               if(!(_loc18_ && param3))
                                                               {
                                                                  §§push(§§pop() * this.m_v2.y);
                                                               }
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(_loc19_)
                                                            {
                                                               addr299:
                                                               §§push(§§pop() - _loc7_);
                                                               if(_loc19_)
                                                               {
                                                                  addr302:
                                                                  §§push(-§§pop());
                                                                  if(!_loc18_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                  }
                                                               }
                                                               var _loc10_:* = §§pop();
                                                               §§push(100 * Number.MIN_VALUE);
                                                               if(_loc19_ || this)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               var _loc11_:* = §§pop();
                                                               §§push(_loc5_);
                                                               if(!_loc18_)
                                                               {
                                                                  §§push(_loc9_);
                                                                  if(_loc19_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc18_)
                                                                     {
                                                                        §§push(_loc6_);
                                                                        if(_loc19_)
                                                                        {
                                                                           addr333:
                                                                           §§push(§§pop() * _loc10_);
                                                                        }
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc18_)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(_loc19_ || param3)
                                                                           {
                                                                              addr347:
                                                                              var _loc12_:Number = §§pop();
                                                                              if(!(_loc18_ && param3))
                                                                              {
                                                                                 §§push(_loc12_);
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc11_);
                                                                                    while(true)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          §§push(param2.p1);
                                                                                          loop2:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr843:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_);
                                                                                                addr844:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   addr845:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr846:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         continue loop2;
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr356);
                                                                                    }
                                                                                    while(_loc19_ || param1)
                                                                                    {
                                                                                       §§goto(addr754);
                                                                                       §§push(_loc6_);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr684);
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr347);
                                                                  }
                                                                  §§goto(addr333);
                                                               }
                                                               §§goto(addr347);
                                                            }
                                                            §§goto(addr302);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc19_ || param1)
                                                         {
                                                            §§goto(addr295);
                                                         }
                                                         §§goto(addr299);
                                                      }
                                                      §§goto(addr295);
                                                   }
                                                   §§goto(addr302);
                                                }
                                                §§push(§§pop() - §§pop());
                                                if(_loc18_ && param2)
                                                {
                                                }
                                             }
                                             §§goto(addr238);
                                          }
                                          §§goto(addr214);
                                       }
                                    }
                                    §§goto(addr238);
                                 }
                                 §§goto(addr166);
                              }
                              §§goto(addr161);
                           }
                           §§goto(addr166);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr122);
                  }
                  §§goto(addr112);
               }
               §§goto(addr103);
            }
            §§goto(addr122);
         }
         §§goto(addr59);
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
                                                               while(true)
                                                               {
                                                                  §§push(_loc3_.col1);
                                                                  loop18:
                                                                  while(!(_loc9_ && param1))
                                                                  {
                                                                     §§push(§§pop().y);
                                                                     loop19:
                                                                     while(true)
                                                                     {
                                                                        §§push(this.m_v1);
                                                                        if(!(_loc8_ || param2))
                                                                        {
                                                                           break;
                                                                        }
                                                                        §§push(§§pop().x);
                                                                        if(_loc8_ || param2)
                                                                        {
                                                                           if(_loc9_ && _loc3_)
                                                                           {
                                                                              continue loop8;
                                                                           }
                                                                           §§push(§§pop() * §§pop());
                                                                           loop20:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc3_.col2);
                                                                              addr520:
                                                                              loop21:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().y);
                                                                                 if(!(_loc9_ && _loc3_))
                                                                                 {
                                                                                    §§push(this.m_v1);
                                                                                    if(!(_loc8_ || this))
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§push(§§pop().y);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       loop38:
                                                                                       while(_loc8_ || param2)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          loop39:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             loop32:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                loop33:
                                                                                                while(_loc8_ || _loc3_)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      addr478:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param2.position);
                                                                                                         if(_loc8_ || _loc3_)
                                                                                                         {
                                                                                                            continue loop16;
                                                                                                         }
                                                                                                         continue loop0;
                                                                                                      }
                                                                                                      continue loop16;
                                                                                                      loop44:
                                                                                                      for(; _loc8_ || _loc3_; if(_loc9_ && this)
                                                                                                      {
                                                                                                         continue;
                                                                                                      },if(!(_loc9_ && param1))
                                                                                                      {
                                                                                                         if(_loc9_ && _loc3_)
                                                                                                         {
                                                                                                            continue loop13;
                                                                                                         }
                                                                                                         §§goto(addr372);
                                                                                                         §§push(_loc6_);
                                                                                                      },§§goto(addr556))
                                                                                                      {
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            continue loop33;
                                                                                                         }
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop45:
                                                                                                         while(_loc8_)
                                                                                                         {
                                                                                                            _loc7_ = §§pop();
                                                                                                            while(_loc8_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc4_);
                                                                                                               loop47:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(_loc8_ || this)
                                                                                                                  {
                                                                                                                     continue loop44;
                                                                                                                  }
                                                                                                                  continue loop45;
                                                                                                                  loop55:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc5_);
                                                                                                                     if(!(_loc8_ || _loc3_))
                                                                                                                     {
                                                                                                                        continue loop47;
                                                                                                                     }
                                                                                                                     addr123:
                                                                                                                     if(!(_loc8_ || this))
                                                                                                                     {
                                                                                                                        loop42:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!(_loc8_ || this))
                                                                                                                           {
                                                                                                                              continue loop14;
                                                                                                                           }
                                                                                                                           if(!(_loc8_ || this))
                                                                                                                           {
                                                                                                                              continue loop1;
                                                                                                                           }
                                                                                                                           §§push(_loc3_.col1);
                                                                                                                           if(_loc9_)
                                                                                                                           {
                                                                                                                              while(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(_loc9_)
                                                                                                                                 {
                                                                                                                                    break loop42;
                                                                                                                                 }
                                                                                                                                 §§push(this.m_v2);
                                                                                                                              }
                                                                                                                              continue loop18;
                                                                                                                              addr430:
                                                                                                                           }
                                                                                                                           §§push(§§pop().y);
                                                                                                                           if(_loc8_)
                                                                                                                           {
                                                                                                                              if(!_loc8_)
                                                                                                                              {
                                                                                                                                 continue loop12;
                                                                                                                              }
                                                                                                                              if(_loc9_)
                                                                                                                              {
                                                                                                                                 continue loop6;
                                                                                                                              }
                                                                                                                              §§push(this.m_v2);
                                                                                                                              if(_loc8_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 if(!(_loc9_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(!(_loc9_ && param1))
                                                                                                                                    {
                                                                                                                                       if(!_loc9_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!(_loc9_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(_loc3_.col2);
                                                                                                                                             if(_loc8_)
                                                                                                                                             {
                                                                                                                                                if(!(_loc8_ || param2))
                                                                                                                                                {
                                                                                                                                                   continue loop21;
                                                                                                                                                }
                                                                                                                                                if(_loc9_ && this)
                                                                                                                                                {
                                                                                                                                                   continue loop7;
                                                                                                                                                }
                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                if(_loc8_)
                                                                                                                                                {
                                                                                                                                                   if(_loc9_)
                                                                                                                                                   {
                                                                                                                                                      continue loop39;
                                                                                                                                                   }
                                                                                                                                                   if(!_loc8_)
                                                                                                                                                   {
                                                                                                                                                      while(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc9_)
                                                                                                                                                         {
                                                                                                                                                            continue loop5;
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      continue loop11;
                                                                                                                                                      addr539:
                                                                                                                                                   }
                                                                                                                                                   §§push(this.m_v2);
                                                                                                                                                   if(!(_loc9_ && this))
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(!(_loc8_ || this))
                                                                                                                                                      {
                                                                                                                                                         continue loop38;
                                                                                                                                                      }
                                                                                                                                                      if(_loc9_ && _loc3_)
                                                                                                                                                      {
                                                                                                                                                         continue loop10;
                                                                                                                                                      }
                                                                                                                                                      addr371:
                                                                                                                                                      §§goto(addr372);
                                                                                                                                                      §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop38;
                                                                                                                                                      }
                                                                                                                                                      addr458:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr554);
                                                                                                                                                }
                                                                                                                                                §§goto(addr371);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                   addr456:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr455:
                                                                                                                                             }
                                                                                                                                             §§goto(addr458);
                                                                                                                                          }
                                                                                                                                          §§goto(addr372);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             if(_loc8_ || param1)
                                                                                                                                             {
                                                                                                                                                break loop42;
                                                                                                                                             }
                                                                                                                                             continue loop32;
                                                                                                                                          }
                                                                                                                                          addr438:
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr456);
                                                                                                                                 }
                                                                                                                                 §§goto(addr371);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                 }
                                                                                                                                 addr437:
                                                                                                                              }
                                                                                                                              §§goto(addr438);
                                                                                                                           }
                                                                                                                           §§goto(addr372);
                                                                                                                           §§goto(addr437);
                                                                                                                           §§goto(addr123);
                                                                                                                        }
                                                                                                                        continue loop20;
                                                                                                                        addr257:
                                                                                                                     }
                                                                                                                     addr130:
                                                                                                                     §§push(_loc7_);
                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                     {
                                                                                                                        if(_loc9_)
                                                                                                                        {
                                                                                                                           continue loop19;
                                                                                                                        }
                                                                                                                        if(§§pop() >= §§pop())
                                                                                                                        {
                                                                                                                           §§push(param1.§4m§);
                                                                                                                           if(!_loc9_)
                                                                                                                           {
                                                                                                                              if(!_loc9_)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(_loc8_)
                                                                                                                                 {
                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                    loop56:
                                                                                                                                    while(_loc8_ || this)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_ || param1)
                                                                                                                                          {
                                                                                                                                             if(!(_loc9_ && param1))
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(param1.§=!`§);
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                      if(_loc8_)
                                                                                                                                                      {
                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                         if(!_loc8_)
                                                                                                                                                         {
                                                                                                                                                            continue loop56;
                                                                                                                                                         }
                                                                                                                                                         if(!_loc9_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         addr557:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(param2.position);
                                                                                                                                                            continue loop0;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      else
                                                                                                                                                      {
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc9_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc9_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  §§pop().y = §§pop();
                                                                                                                                                                  break loop56;
                                                                                                                                                               }
                                                                                                                                                               loop58:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                  addr187:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc9_ && _loc3_))
                                                                                                                                                                     {
                                                                                                                                                                        break loop58;
                                                                                                                                                                     }
                                                                                                                                                                     addr238:
                                                                                                                                                                     addr238:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(param1.§=!`§);
                                                                                                                                                                        continue loop58;
                                                                                                                                                                     }
                                                                                                                                                                     continue loop58;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop55;
                                                                                                                                                            }
                                                                                                                                                            loop53:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                               addr158:
                                                                                                                                                               addr177:
                                                                                                                                                               while(_loc8_ || this)
                                                                                                                                                               {
                                                                                                                                                                  continue loop55;
                                                                                                                                                               }
                                                                                                                                                               while(!_loc9_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc8_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(param1.§=!`§);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop53;
                                                                                                                                                                     }
                                                                                                                                                                     addr156:
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr478);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr158);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr402);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         addr99:
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   addr89:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(!_loc9_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc9_ && _loc3_))
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr99);
                                                                                                                                                            §§push(_loc7_);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr185);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr156);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                addr31:
                                                                                                                                                return;
                                                                                                                                                addr85:
                                                                                                                                             }
                                                                                                                                             addr234:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(param1.§4m§);
                                                                                                                                                addr236:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                   addr237:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr238);
                                                                                                                                          }
                                                                                                                                          §§goto(addr158);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr89);
                                                                                                                                          addr151:
                                                                                                                                          §§pop().y = param1.§=!`§;
                                                                                                                                       }
                                                                                                                                       §§goto(addr185);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc8_)
                                                                                                                                       {
                                                                                                                                          if(_loc8_)
                                                                                                                                          {
                                                                                                                                             break loop55;
                                                                                                                                          }
                                                                                                                                          §§goto(addr187);
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(param1.§4m§);
                                                                                                                                             addr143:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc5_);
                                                                                                                                                addr144:
                                                                                                                                                addr174:
                                                                                                                                                while(!(_loc9_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§goto(addr151);
                                                                                                                                                }
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc8_)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      §§goto(addr177);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr237);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr141:
                                                                                                                                       }
                                                                                                                                       §§goto(addr238);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 §§goto(addr144);
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!_loc9_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr174);
                                                                                                                                       §§push(_loc6_);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§goto(addr236);
                                                                                                                                    }
                                                                                                                                    §§goto(addr237);
                                                                                                                                 }
                                                                                                                                 addr171:
                                                                                                                              }
                                                                                                                              §§goto(addr236);
                                                                                                                           }
                                                                                                                           §§goto(addr143);
                                                                                                                        }
                                                                                                                        §§goto(addr141);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        addr372:
                                                                                                                        while(!(_loc9_ && _loc3_))
                                                                                                                        {
                                                                                                                           if(§§pop() < §§pop())
                                                                                                                           {
                                                                                                                              §§goto(addr234);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr171);
                                                                                                                              §§push(param1.§4m§);
                                                                                                                           }
                                                                                                                           §§goto(addr236);
                                                                                                                           §§goto(addr130);
                                                                                                                        }
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(!_loc8_)
                                                                                                                           {
                                                                                                                              continue loop32;
                                                                                                                           }
                                                                                                                           addr374:
                                                                                                                           if(!(_loc9_ && param1))
                                                                                                                           {
                                                                                                                              if(!(_loc8_ || param2))
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              continue loop44;
                                                                                                                           }
                                                                                                                           addr554:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              break loop45;
                                                                                                                              §§goto(addr374);
                                                                                                                           }
                                                                                                                           §§goto(addr226);
                                                                                                                        }
                                                                                                                        addr226:
                                                                                                                        continue loop3;
                                                                                                                        addr372:
                                                                                                                     }
                                                                                                                     §§goto(addr234);
                                                                                                                     §§goto(addr372);
                                                                                                                  }
                                                                                                                  §§goto(addr31);
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            addr556:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc5_ = §§pop();
                                                                                                               §§goto(addr557);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                continue loop17;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop9;
                                                                           }
                                                                        }
                                                                        §§goto(addr539);
                                                                     }
                                                                     continue loop4;
                                                                  }
                                                                  continue loop2;
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
         }
         §§goto(addr85);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!(_loc3_ && param1))
         {
            param1.§=`§ = 0;
         }
         while(true)
         {
            param1.§4=§.SetV(this.m_v1);
            while(_loc4_)
            {
               param1.§#P§ = 0;
               if(!(_loc3_ && this))
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
         if(!_loc10_)
         {
            §§push(param2);
            if(_loc11_ || this)
            {
               addr31:
               §§push(§§pop() * §§pop());
               §§push(param1.y);
               if(!(_loc10_ && param1))
               {
                  §§push(§§pop() * param2);
               }
            }
            var _loc5_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
            var _loc6_:b2Vec2 = b2Math.§&!M§(param3,this.m_v1);
            var _loc7_:b2Vec2 = b2Math.§&!M§(param3,this.m_v2);
            §§push(b2Math.§extends§(param1,_loc6_));
            if(!(_loc10_ && param2))
            {
               §§push(§§pop() - param2);
               if(!_loc10_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            §§push(b2Math.§extends§(param1,_loc7_));
            if(!(_loc10_ && this))
            {
               §§push(§§pop() - param2);
               if(_loc11_ || this)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc9_:* = §§pop();
            if(_loc11_)
            {
               §§push(_loc8_);
               do
               {
                  §§push(0);
                  if(_loc11_)
                  {
                     if(§§pop() <= §§pop())
                     {
                        §§push(_loc9_);
                        loop1:
                        do
                        {
                           if(_loc11_ || this)
                           {
                              §§push(0);
                              if(!_loc10_)
                              {
                                 if(§§pop() > §§pop())
                                 {
                                    loop2:
                                    while(true)
                                    {
                                       §§push(_loc7_);
                                       §§push(_loc9_);
                                       if(!_loc10_)
                                       {
                                          §§push(-§§pop());
                                          if(_loc11_)
                                          {
                                             addr425:
                                             §§push(_loc8_);
                                             if(!_loc10_)
                                             {
                                                §§push(_loc9_);
                                                if(_loc11_)
                                                {
                                                   §§push(§§pop() - §§pop());
                                                   if(_loc11_ || this)
                                                   {
                                                      addr439:
                                                      §§push(§§pop() / §§pop());
                                                      if(!_loc10_)
                                                      {
                                                         addr442:
                                                         §§push(_loc6_.x);
                                                         if(_loc11_)
                                                         {
                                                            addr446:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc11_ || this)
                                                            {
                                                               §§push(_loc8_);
                                                               if(_loc11_)
                                                               {
                                                                  addr457:
                                                                  §§push(_loc8_);
                                                                  if(!(_loc10_ && param1))
                                                                  {
                                                                     §§push(§§pop() - _loc9_);
                                                                     if(_loc10_)
                                                                     {
                                                                     }
                                                                     addr476:
                                                                     §§pop().x = §§pop() + §§pop() * §§pop();
                                                                     addr474:
                                                                     loop3:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc7_);
                                                                        §§push(_loc9_);
                                                                        if(_loc11_ || param2)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           if(!(_loc10_ && param1))
                                                                           {
                                                                              §§push(_loc8_);
                                                                              if(_loc11_ || param1)
                                                                              {
                                                                                 §§push(_loc9_);
                                                                                 if(_loc11_ || param2)
                                                                                 {
                                                                                    §§push(§§pop() - §§pop());
                                                                                    if(_loc11_)
                                                                                    {
                                                                                       §§push(§§pop() / §§pop());
                                                                                       if(_loc11_ || param3)
                                                                                       {
                                                                                          addr348:
                                                                                          §§push(_loc6_.y);
                                                                                          if(!(_loc10_ && param2))
                                                                                          {
                                                                                             addr357:
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc10_)
                                                                                             {
                                                                                                addr360:
                                                                                                §§push(_loc8_);
                                                                                                if(_loc11_)
                                                                                                {
                                                                                                   §§push(_loc8_);
                                                                                                   if(_loc11_ || param1)
                                                                                                   {
                                                                                                      addr371:
                                                                                                      §§push(§§pop() - _loc9_);
                                                                                                      if(_loc11_ || param2)
                                                                                                      {
                                                                                                         addr391:
                                                                                                         §§push(§§pop() / §§pop());
                                                                                                         if(!(_loc10_ && param3))
                                                                                                         {
                                                                                                            addr388:
                                                                                                            §§push(_loc7_.y);
                                                                                                         }
                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                         while(true)
                                                                                                         {
                                                                                                            if(_loc11_)
                                                                                                            {
                                                                                                               if(!(_loc10_ && param3))
                                                                                                               {
                                                                                                                  loop7:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(param4);
                                                                                                                     §§push(_loc5_.x);
                                                                                                                     if(!(_loc10_ && this))
                                                                                                                     {
                                                                                                                        §§push(_loc6_.x);
                                                                                                                        if(!(_loc10_ && param2))
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!(_loc10_ && param2))
                                                                                                                           {
                                                                                                                              addr267:
                                                                                                                              §§push(§§pop() + _loc7_.x);
                                                                                                                              if(_loc11_ || param3)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() / 3);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§pop().x = §§pop();
                                                                                                                           continue loop3;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr267);
                                                                                                                     addr563:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        continue loop7;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr237:
                                                                                                                  §§push(0.5);
                                                                                                                  if(_loc10_ && param3)
                                                                                                                  {
                                                                                                                     continue loop1;
                                                                                                                  }
                                                                                                                  §§push(_loc6_.x);
                                                                                                                  if(_loc11_ || param3)
                                                                                                                  {
                                                                                                                     §§push(_loc5_.x);
                                                                                                                     if(_loc11_ || param2)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc10_)
                                                                                                                        {
                                                                                                                           addr135:
                                                                                                                           §§push(_loc7_.y);
                                                                                                                           if(!_loc10_)
                                                                                                                           {
                                                                                                                              §§push(_loc5_.y);
                                                                                                                              if(_loc11_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(_loc11_ || param1)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc10_)
                                                                                                                                    {
                                                                                                                                       addr159:
                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                       if(_loc11_)
                                                                                                                                       {
                                                                                                                                          addr163:
                                                                                                                                          §§push(_loc5_.y);
                                                                                                                                          if(_loc11_)
                                                                                                                                          {
                                                                                                                                             addr178:
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(!_loc10_)
                                                                                                                                             {
                                                                                                                                                addr170:
                                                                                                                                                §§push(_loc7_.x);
                                                                                                                                                if(!_loc10_)
                                                                                                                                                {
                                                                                                                                                   addr174:
                                                                                                                                                   §§push(§§pop() - _loc5_.x);
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                             continue loop1;
                                                                                                                                          }
                                                                                                                                          §§goto(addr178);
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                       }
                                                                                                                                       §§goto(addr170);
                                                                                                                                    }
                                                                                                                                    §§goto(addr178);
                                                                                                                                 }
                                                                                                                                 §§goto(addr170);
                                                                                                                              }
                                                                                                                              §§goto(addr174);
                                                                                                                           }
                                                                                                                           §§goto(addr178);
                                                                                                                        }
                                                                                                                        §§goto(addr159);
                                                                                                                     }
                                                                                                                     §§goto(addr163);
                                                                                                                  }
                                                                                                                  §§goto(addr135);
                                                                                                                  addr237:
                                                                                                                  addr236:
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_);
                                                                                                                     addr663:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        addr664:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                           {
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 §§push(_loc9_);
                                                                                                                                 if(_loc11_)
                                                                                                                                 {
                                                                                                                                    §§push(-§§pop());
                                                                                                                                    if(_loc11_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc8_);
                                                                                                                                       if(!(_loc10_ && this))
                                                                                                                                       {
                                                                                                                                          §§push(_loc9_);
                                                                                                                                          if(_loc11_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc11_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                if(_loc11_ || param1)
                                                                                                                                                {
                                                                                                                                                   addr604:
                                                                                                                                                   §§push(_loc6_.x);
                                                                                                                                                   if(!_loc10_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc11_ || this)
                                                                                                                                                      {
                                                                                                                                                         addr616:
                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                         if(_loc11_)
                                                                                                                                                         {
                                                                                                                                                            addr619:
                                                                                                                                                            §§push(_loc8_);
                                                                                                                                                            if(!(_loc10_ && this))
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() - _loc9_);
                                                                                                                                                               if(_loc11_ || param2)
                                                                                                                                                               {
                                                                                                                                                                  addr652:
                                                                                                                                                                  addr646:
                                                                                                                                                                  addr653:
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  if(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                  }
                                                                                                                                                                  §§pop().x = §§pop() + §§pop();
                                                                                                                                                                  while(_loc11_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     §§push(_loc9_);
                                                                                                                                                                     if(!_loc10_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(-§§pop());
                                                                                                                                                                        if(_loc11_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc8_);
                                                                                                                                                                           if(_loc11_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                              if(!(_loc10_ && param3))
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                                                                 if(_loc11_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                    if(_loc11_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc6_.y);
                                                                                                                                                                                       if(!(_loc10_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          addr517:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc11_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr525:
                                                                                                                                                                                             §§push(_loc8_);
                                                                                                                                                                                             if(_loc11_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(_loc11_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - _loc9_);
                                                                                                                                                                                                   if(!(_loc10_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() / §§pop());
                                                                                                                                                                                                      if(_loc11_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr562:
                                                                                                                                                                                                      §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                      addr561:
                                                                                                                                                                                                      §§goto(addr563);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr560:
                                                                                                                                                                                                   §§goto(addr561);
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr560);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr562);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr560);
                                                                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr525);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr562);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr560);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr517);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr525);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr562);
                                                                                                                                                                  }
                                                                                                                                                                  return 0;
                                                                                                                                                                  addr654:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr652);
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr646);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr652);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr652);
                                                                                                                                                }
                                                                                                                                                §§goto(addr653);
                                                                                                                                             }
                                                                                                                                             §§goto(addr619);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr652);
                                                                                                                                    }
                                                                                                                                    §§goto(addr616);
                                                                                                                                 }
                                                                                                                                 §§goto(addr604);
                                                                                                                                 addr667:
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr652);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr662:
                                                                                                               }
                                                                                                               §§goto(addr237);
                                                                                                            }
                                                                                                            §§goto(addr654);
                                                                                                            addr225:
                                                                                                            if(!(_loc11_ || param1))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            if(!_loc11_)
                                                                                                            {
                                                                                                               continue loop2;
                                                                                                            }
                                                                                                            if(_loc10_)
                                                                                                            {
                                                                                                               §§goto(addr667);
                                                                                                            }
                                                                                                            §§goto(addr236);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   §§goto(addr391);
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr391);
                                                                                       }
                                                                                       §§goto(addr360);
                                                                                    }
                                                                                    §§goto(addr388);
                                                                                 }
                                                                                 §§goto(addr371);
                                                                              }
                                                                              §§goto(addr357);
                                                                           }
                                                                           §§goto(addr348);
                                                                        }
                                                                        §§goto(addr360);
                                                                     }
                                                                  }
                                                                  §§push(§§pop() / §§pop());
                                                                  if(_loc11_)
                                                                  {
                                                                     §§goto(addr474);
                                                                     §§push(_loc7_.x);
                                                                  }
                                                               }
                                                               §§goto(addr474);
                                                            }
                                                            §§goto(addr476);
                                                         }
                                                         §§goto(addr457);
                                                      }
                                                      §§goto(addr476);
                                                   }
                                                   §§goto(addr446);
                                                }
                                                §§goto(addr476);
                                             }
                                             §§goto(addr439);
                                          }
                                          §§goto(addr442);
                                       }
                                       §§goto(addr425);
                                    }
                                 }
                                 §§goto(addr237);
                              }
                              §§goto(addr664);
                           }
                           §§goto(addr663);
                        }
                        while(_loc10_);
                        
                        continue;
                     }
                     §§goto(addr662);
                  }
                  §§goto(addr664);
               }
               while(_loc10_);
               
               return §§pop();
            }
            §§goto(addr563);
         }
         §§goto(addr31);
      }
      
      public function §8>§() : Number
      {
         return this.§6M§;
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
      
      public function §1!X§() : b2Vec2
      {
         return this.§+i§;
      }
      
      public function §6§() : b2Vec2
      {
         return this.§=d§;
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
      
      public function §4f§(param1:b2Transform) : b2Vec2
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         var _loc2_:b2Mat22 = param1.R;
         §§push(§§findproperty(b2Vec2));
         §§push(param1.position.x);
         if(!_loc4_)
         {
            §§push(_loc2_.col1.x);
            if(!(_loc4_ && param1))
            {
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     §§push(_loc2_.col2.x);
                     if(!(_loc4_ && this))
                     {
                        §§push(this.m_coreV1);
                        if(_loc3_ || _loc3_)
                        {
                           §§push(§§pop().y);
                           if(_loc3_ || param1)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc3_ || _loc2_)
                              {
                                 §§push(§§pop() + §§pop());
                                 if(_loc3_)
                                 {
                                    §§goto(addr97);
                                 }
                                 §§goto(addr103);
                              }
                              §§goto(addr136);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr125);
                     }
                     §§goto(addr136);
                  }
                  §§goto(addr103);
               }
               §§goto(addr136);
            }
            §§goto(addr97);
         }
         addr97:
         §§push(§§pop() + §§pop());
         §§push(param1.position.y);
         if(_loc3_)
         {
            addr103:
            §§push(_loc2_.col1.y);
            if(_loc3_ || _loc3_)
            {
               addr125:
               §§push(this.m_coreV1.x);
               if(!(_loc4_ && this))
               {
                  §§push(§§pop() * §§pop());
                  if(!_loc4_)
                  {
                     addr136:
                     §§push(_loc2_.col2.y);
                     if(!(_loc4_ && this))
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
            §§goto(addr136);
         }
         addr152:
         return new §§pop().b2Vec2(§§pop(),§§pop() + §§pop());
      }
      
      public function §2!`§() : b2EdgeShape
      {
         return this.§[0§;
      }
      
      public function §"C§() : b2EdgeShape
      {
         return this.§8H§;
      }
      
      public function §0!`§(param1:b2Transform, param2:Number, param3:Number) : b2Vec2
      {
         var _loc9_:Boolean = false;
         var _loc10_:Boolean = true;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param1.position.x);
         if(!(_loc9_ && param3))
         {
            §§push(_loc4_.col1.x);
            if(!_loc9_)
            {
               §§push(this.m_coreV1.x);
               if(!_loc9_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc10_ || param2)
                  {
                     addr49:
                     §§push(_loc4_.col2.x);
                     if(!_loc9_)
                     {
                        addr54:
                        §§push(§§pop() * this.m_coreV1.y);
                     }
                     §§push(§§pop() + §§pop());
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
                     if(_loc10_ || param3)
                     {
                        §§push(this.m_coreV1.x);
                        if(_loc10_ || param3)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc10_)
                           {
                              addr97:
                              §§push(_loc4_.col2.y);
                              if(_loc10_ || param2)
                              {
                                 addr111:
                                 §§push(§§pop() + §§pop() * this.m_coreV1.y);
                              }
                              §§goto(addr111);
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc9_ && param2))
                           {
                              addr120:
                              §§push(Number(§§pop()));
                           }
                           var _loc6_:* = §§pop();
                           §§push(param1.position.x);
                           if(_loc10_)
                           {
                              §§push(_loc4_.col1.x);
                              if(_loc10_)
                              {
                                 §§push(this.m_coreV2.x);
                                 if(_loc10_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc9_)
                                    {
                                       addr140:
                                       §§push(_loc4_.col2.x);
                                       if(!(_loc9_ && param1))
                                       {
                                          addr154:
                                          §§push(§§pop() + §§pop() * this.m_coreV2.y);
                                       }
                                       §§goto(addr154);
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc9_ && param2))
                                    {
                                       addr163:
                                       §§push(Number(§§pop()));
                                    }
                                    var _loc7_:* = §§pop();
                                    §§push(param1.position.y);
                                    if(_loc10_)
                                    {
                                       §§push(_loc4_.col1.y);
                                       if(!(_loc9_ && param1))
                                       {
                                          §§push(this.m_coreV2.x);
                                          if(!(_loc9_ && param2))
                                          {
                                             addr223:
                                             §§push(§§pop() * §§pop());
                                             if(_loc10_ || param2)
                                             {
                                                §§push(_loc4_.col2.y);
                                                if(_loc10_ || param3)
                                                {
                                                   §§push(§§pop() * this.m_coreV2.y);
                                                }
                                             }
                                             §§push(§§pop() + §§pop());
                                             if(_loc10_)
                                             {
                                                addr227:
                                                var _loc8_:Number = §§pop();
                                                if(!_loc9_)
                                                {
                                                   §§push(_loc5_);
                                                   if(_loc10_ || param2)
                                                   {
                                                      §§push(param2);
                                                      if(!_loc9_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc9_ && param3))
                                                         {
                                                            §§push(_loc6_);
                                                            if(!_loc9_)
                                                            {
                                                               addr321:
                                                               §§push(param3);
                                                               if(_loc10_ || param2)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(_loc10_)
                                                                  {
                                                                     addr343:
                                                                     §§push(§§pop() + §§pop());
                                                                     §§push(_loc7_);
                                                                     if(_loc10_)
                                                                     {
                                                                        §§push(param2);
                                                                        if(!_loc9_)
                                                                        {
                                                                           addr349:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc9_)
                                                                           {
                                                                              addr363:
                                                                              §§push(_loc8_);
                                                                              if(!(_loc9_ && param1))
                                                                              {
                                                                                 addr360:
                                                                                 §§push(§§pop() * param3);
                                                                              }
                                                                              if(§§pop() <= §§pop() + §§pop())
                                                                              {
                                                                                 §§push(this.§[!E§);
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    if(!_loc9_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       while(true)
                                                                                       {
                                                                                          §§pop().x = §§pop();
                                                                                          addr288:
                                                                                          while(true)
                                                                                          {
                                                                                             if(_loc9_)
                                                                                             {
                                                                                                loop3:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(!_loc9_)
                                                                                                   {
                                                                                                      addr295:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§[!E§);
                                                                                                         if(_loc9_)
                                                                                                         {
                                                                                                            continue loop0;
                                                                                                         }
                                                                                                         if(!(_loc9_ && this))
                                                                                                         {
                                                                                                            break loop3;
                                                                                                         }
                                                                                                         addr278:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().y = §§pop();
                                                                                                         continue loop3;
                                                                                                      }
                                                                                                      addr295:
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(this.§[!E§);
                                                                                                      }
                                                                                                      addr364:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      addr367:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§pop().x = §§pop();
                                                                                                         addr368:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(this.§[!E§);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                return §§pop();
                                                                                                addr296:
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(this.§[!E§);
                                                                                                continue loop0;
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr287:
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§goto(addr295);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr364);
                                                                           }
                                                                           §§goto(addr363);
                                                                        }
                                                                        §§goto(addr360);
                                                                     }
                                                                  }
                                                                  §§goto(addr363);
                                                               }
                                                               §§goto(addr349);
                                                            }
                                                            §§goto(addr363);
                                                         }
                                                         §§goto(addr343);
                                                      }
                                                      §§goto(addr321);
                                                   }
                                                   §§goto(addr343);
                                                }
                                                §§goto(addr290);
                                             }
                                             §§goto(addr227);
                                          }
                                          §§push(§§pop() + §§pop());
                                       }
                                       §§goto(addr223);
                                    }
                                    §§goto(addr227);
                                 }
                                 §§goto(addr154);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr163);
                        }
                        §§goto(addr111);
                     }
                     §§goto(addr97);
                  }
                  §§goto(addr120);
               }
               §§goto(addr54);
            }
            §§goto(addr49);
         }
         §§goto(addr67);
      }
      
      b2internal function §95§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = true;
         var _loc6_:Boolean = false;
         if(!_loc6_)
         {
            this.§8H§ = param1;
         }
         loop0:
         while(true)
         {
            this.m_coreV1 = param2;
            while(true)
            {
               this.m_cornerDir1 = param3;
               while(_loc5_)
               {
                  continue loop0;
                  this.m_cornerConvex1 = param4;
                  if(_loc5_)
                  {
                     return;
                  }
               }
            }
         }
      }
      
      b2internal function §?S§(param1:b2EdgeShape, param2:b2Vec2, param3:b2Vec2, param4:Boolean) : void
      {
         var _loc5_:Boolean = false;
         var _loc6_:Boolean = true;
         if(!_loc5_)
         {
            this.§[0§ = param1;
            while(true)
            {
               this.m_coreV2 = param2;
               while(true)
               {
                  this.m_cornerDir2 = param3;
                  §§goto(addr69);
               }
            }
         }
         addr69:
         while(true)
         {
            this.m_cornerConvex2 = param4;
            if(_loc6_)
            {
               if(_loc6_ || param3)
               {
                  continue loop0;
               }
               continue loop1;
            }
         }
         addr64:
      }
   }
}
