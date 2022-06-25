package §>!Z§
{
   import §&H§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var §>h§:b2Vec2;
      
      public var §^!z§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            this.§>h§ = new b2Vec2();
            while(true)
            {
               this.§^!z§ = new b2Vec2();
               while(_loc2_ || _loc2_)
               {
                  super();
                  if(_loc1_)
                  {
                     continue;
                  }
                  return;
                  addr39:
               }
            }
         }
         §§goto(addr39);
      }
      
      public static function §5"$§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(!_loc4_)
         {
            _loc3_.§5"$§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §-!<§() : Boolean
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         §§push(this.§^!z§.x);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() - this.§>h§.x);
            if(!_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§^!z§.y);
         if(_loc4_ || _loc3_)
         {
            §§push(§§pop() - this.§>h§.y);
            if(_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(!(_loc5_ && _loc3_))
         {
            §§push(_loc1_);
            if(_loc4_)
            {
               §§push(0);
               if(!_loc5_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc4_)
                  {
                     if(§§pop())
                     {
                        if(_loc4_)
                        {
                           addr72:
                           §§pop();
                           §§push(_loc2_ >= 0);
                           if(_loc4_)
                           {
                              addr88:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        var _loc3_:* = §§pop();
                        if(_loc4_)
                        {
                           §§push(_loc3_);
                           loop0:
                           while(true)
                           {
                              §§push(Boolean(§§pop()));
                              loop1:
                              while(true)
                              {
                                 §§push(§§pop());
                                 while(true)
                                 {
                                    if(§§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          §§pop();
                                          loop4:
                                          while(true)
                                          {
                                             §§push(this.§>h§.§-!<§());
                                             loop5:
                                             while(_loc4_)
                                             {
                                                §§push(Boolean(§§pop()));
                                                while(!(_loc5_ && this))
                                                {
                                                   loop10:
                                                   while(_loc4_ || this)
                                                   {
                                                      §§push(Boolean(§§pop()));
                                                      while(_loc4_)
                                                      {
                                                         while(true)
                                                         {
                                                            §§push(Boolean(§§pop()));
                                                            while(true)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  continue loop3;
                                                               }
                                                               _loc3_ = §§pop();
                                                               if(!_loc5_)
                                                               {
                                                                  if(!_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  continue;
                                                               }
                                                               addr175:
                                                               while(true)
                                                               {
                                                                  continue loop10;
                                                               }
                                                            }
                                                            continue loop4;
                                                         }
                                                         if(_loc4_ || _loc2_)
                                                         {
                                                            if(!_loc5_)
                                                            {
                                                               if(!(_loc4_ || _loc2_))
                                                               {
                                                                  continue loop5;
                                                               }
                                                               §§goto(addr118);
                                                               continue loop5;
                                                            }
                                                            continue loop10;
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         §§pop();
                                                         §§goto(addr175);
                                                      }
                                                   }
                                                }
                                                continue loop1;
                                             }
                                             continue loop0;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(_loc5_)
                                       {
                                          break;
                                       }
                                       if(§§pop())
                                       {
                                          §§goto(addr174);
                                       }
                                       §§goto(addr135);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr154);
                     }
                     §§goto(addr88);
                  }
               }
            }
         }
         §§goto(addr72);
      }
      
      public function §?!b§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§>h§.x);
         if(!_loc2_)
         {
            §§push(this.§^!z§.x);
            if(!_loc2_)
            {
               §§push(§§pop() + §§pop());
               if(_loc1_ || this)
               {
                  addr55:
                  §§push(§§pop() / 2);
               }
               §§push(this.§>h§.y);
               if(_loc1_)
               {
                  addr62:
                  §§push(§§pop() + this.§^!z§.y);
                  if(!_loc2_)
                  {
                     §§push(§§pop() / 2);
                  }
               }
               return new §§pop().b2Vec2(§§pop(),§§pop());
            }
            §§goto(addr62);
         }
         §§goto(addr55);
      }
      
      public function §3!Y§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§^!z§.x);
         if(_loc2_ || _loc2_)
         {
            §§push(this.§>h§.x);
            if(_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(!_loc1_)
               {
                  addr58:
                  §§push(§§pop() / 2);
                  §§push(this.§^!z§.y);
                  if(!_loc1_)
                  {
                     §§push(§§pop() - this.§>h§.y);
                     if(_loc1_ && _loc2_)
                     {
                     }
                     §§goto(addr76);
                  }
                  §§push(§§pop() / 2);
               }
               §§goto(addr58);
            }
            addr76:
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr58);
      }
      
      public function §4#§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(_loc4_ || param1)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  while(true)
                  {
                     if(§§pop())
                     {
                        while(true)
                        {
                           §§pop();
                           addr301:
                           while(true)
                           {
                              §§push(this.§>h§);
                              addr287:
                              while(true)
                              {
                                 §§push(§§pop().x);
                                 addr288:
                                 while(true)
                                 {
                                    §§push(param1.§>h§);
                                    addr290:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr291:
                                       while(true)
                                       {
                                          §§push(§§pop() <= §§pop());
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr300:
                     }
                     while(true)
                     {
                        while(true)
                        {
                           §§push(Boolean(§§pop()));
                           while(true)
                           {
                              _loc2_ = §§pop();
                              while(true)
                              {
                                 §§push(_loc2_);
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Boolean(§§pop()));
                                    while(true)
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
                                                   §§push(this.§>h§);
                                                   if(!_loc4_)
                                                   {
                                                      break;
                                                   }
                                                   §§push(§§pop().y);
                                                   while(true)
                                                   {
                                                      §§push(param1.§>h§);
                                                      if(!(_loc3_ && _loc2_))
                                                      {
                                                         §§push(§§pop().y);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() <= §§pop());
                                                            addr273:
                                                            while(true)
                                                            {
                                                               loop16:
                                                               while(true)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  loop17:
                                                                  while(true)
                                                                  {
                                                                     _loc2_ = §§pop();
                                                                     addr276:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc2_);
                                                                        loop19:
                                                                        while(true)
                                                                        {
                                                                           §§push(Boolean(§§pop()));
                                                                           addr217:
                                                                           while(!_loc3_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           addr196:
                                                                           continue loop17;
                                                                           while(true)
                                                                           {
                                                                              if(_loc4_ || _loc2_)
                                                                              {
                                                                                 continue loop8;
                                                                              }
                                                                              continue loop19;
                                                                           }
                                                                           continue loop8;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                   §§goto(addr290);
                                                }
                                                §§goto(addr287);
                                             }
                                          }
                                          §§goto(addr273);
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
         §§goto(addr301);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         §§push(-Number.MAX_VALUE);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(!_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(!(_loc18_ && param2))
         {
            §§push(§§pop() - param2.p1.x);
            if(!(_loc18_ && this))
            {
               addr80:
               §§push(Number(§§pop()));
            }
            var _loc7_:* = §§pop();
            §§push(param2.p2.y);
            if(_loc17_ || param2)
            {
               §§push(§§pop() - param2.p1.y);
               if(!_loc18_)
               {
                  §§push(Number(§§pop()));
               }
            }
            var _loc8_:* = §§pop();
            var _loc9_:Number = Math.abs(_loc7_);
            var _loc10_:Number = Math.abs(_loc8_);
            _loc11_ = param1.normal;
            if(_loc17_)
            {
               §§push(_loc9_);
               loop0:
               while(true)
               {
                  if(§§pop() >= Number.MIN_VALUE)
                  {
                     §§push(1);
                     loop1:
                     while(true)
                     {
                        §§push(_loc7_);
                        loop2:
                        while(true)
                        {
                           §§push(§§pop() / §§pop());
                           loop3:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop4:
                              while(true)
                              {
                                 _loc12_ = §§pop();
                                 loop5:
                                 while(true)
                                 {
                                    §§push(this.§>h§);
                                    loop6:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc18_ && param2))
                                       {
                                          §§push(_loc5_);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             addr995:
                                             while(true)
                                             {
                                                §§push(_loc12_);
                                                addr996:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                }
                                             }
                                          }
                                          addr994:
                                       }
                                       loop10:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop11:
                                          while(true)
                                          {
                                             _loc13_ = §§pop();
                                             loop12:
                                             while(true)
                                             {
                                                §§push(this.§^!z§);
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      if(!_loc18_)
                                                      {
                                                         §§push(§§pop() - §§pop());
                                                         while(true)
                                                         {
                                                            §§push(_loc12_);
                                                         }
                                                         addr977:
                                                      }
                                                      loop16:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         loop17:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop18:
                                                            while(true)
                                                            {
                                                               _loc14_ = §§pop();
                                                               loop19:
                                                               while(true)
                                                               {
                                                                  §§push(-1);
                                                                  loop20:
                                                                  while(true)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     while(true)
                                                                     {
                                                                        _loc16_ = §§pop();
                                                                        loop22:
                                                                        while(true)
                                                                        {
                                                                           if(_loc17_ || param1)
                                                                           {
                                                                              §§push(_loc13_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc14_);
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc17_)
                                                                                    {
                                                                                       if(§§pop() > §§pop())
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc13_);
                                                                                             loop26:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop27:
                                                                                                while(!(_loc18_ && param2))
                                                                                                {
                                                                                                   _loc15_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc14_);
                                                                                                      loop29:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop30:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc13_ = §§pop();
                                                                                                            loop31:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc15_);
                                                                                                               loop32:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  loop33:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc14_ = §§pop();
                                                                                                                     loop34:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(1);
                                                                                                                        loop35:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop36:
                                                                                                                           while(!(_loc18_ && param1))
                                                                                                                           {
                                                                                                                              _loc16_ = §§pop();
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 addr503:
                                                                                                                                 if(!(_loc17_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 addr520:
                                                                                                                                 §§push(1);
                                                                                                                                 if(!(_loc18_ && _loc3_))
                                                                                                                                 {
                                                                                                                                    if(_loc17_)
                                                                                                                                    {
                                                                                                                                       addr452:
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       if(_loc18_ && param2)
                                                                                                                                       {
                                                                                                                                          loop58:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             addr721:
                                                                                                                                             addr905:
                                                                                                                                             while(_loc17_ || param2)
                                                                                                                                             {
                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                loop60:
                                                                                                                                                while(!(_loc18_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(this.§^!z§);
                                                                                                                                                   if(_loc17_ || _loc3_)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      loop61:
                                                                                                                                                      while(_loc17_)
                                                                                                                                                      {
                                                                                                                                                         if(!(_loc18_ && this))
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc6_);
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  if(_loc17_ || this)
                                                                                                                                                                  {
                                                                                                                                                                     addr657:
                                                                                                                                                                     §§push(_loc12_);
                                                                                                                                                                     loop84:
                                                                                                                                                                     while(_loc17_ || this)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              loop85:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc17_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr674:
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr674:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    while(_loc17_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop10;
                                                                                                                                                                                       }
                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(-1);
                                                                                                                                                                                          addr597:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc18_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr741:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc8_);
                                                                                                                                                                                                if(_loc18_ && this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   break;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop2;
                                                                                                                                                                                             §§goto(addr520);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop20;
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop11;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr691:
                                                                                                                                                                                 loop55:
                                                                                                                                                                                 while(_loc17_ || param2)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc6_);
                                                                                                                                                                                    if(_loc17_ || this)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                       while(_loc17_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                          break loop84;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop98:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                          addr887:
                                                                                                                                                                                          while(_loc17_ || _loc3_)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc3_ = §§pop();
                                                                                                                                                                                             while(_loc17_)
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                   break loop55;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop98;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop4;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr707:
                                                                                                                                                                                       addr886:
                                                                                                                                                                                    }
                                                                                                                                                                                    break loop84;
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc4_ = §§pop();
                                                                                                                                                                                    addr883:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc3_);
                                                                                                                                                                                       addr871:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc4_);
                                                                                                                                                                                          addr872:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                addr821:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc10_);
                                                                                                                                                                                                   break loop85;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr821:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr874);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(!_loc18_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(§§pop() < Number.MIN_VALUE)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc17_ || param2)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc6_);
                                                                                                                                                                                          loop46:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§>h§);
                                                                                                                                                                                             if(_loc17_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() < §§pop());
                                                                                                                                                                                                   loop48:
                                                                                                                                                                                                   while(!(_loc18_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                      if(!_loc18_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop51:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop52:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           param1.fraction = _loc3_;
                                                                                                                                                                                                                           if(_loc17_ || _loc3_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc17_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc18_ && this))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(true);
                                                                                                                                                                                                                                       if(!(_loc18_ && this))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr810:
                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr865:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop();
                                                                                                                                                                                                                                             addr866:
                                                                                                                                                                                                                                             while(_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§^!z§);
                                                                                                                                                                                                                                                continue loop13;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop19;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr222:
                                                                                                                                                                                                                                          if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop51;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc18_ && param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc17_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   return §§pop();
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc18_ && param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      loop104:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         addr1056:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               break loop48;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop104;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1055:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1041:
                                                                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr1000:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr821);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr1032:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             return §§pop();
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr874);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       loop86:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc17_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop31;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop12;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc17_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(!_loc18_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc16_ = §§pop();
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                                                                                                                            if(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                                                                               loop67:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop84;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                                                                        addr386:
                                                                                                                                                                                                                                                                        while(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc17_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc3_);
                                                                                                                                                                                                                                                                                 continue loop67;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1051:
                                                                                                                                                                                                                                                                              addr1013:
                                                                                                                                                                                                                                                                              addr1051:
                                                                                                                                                                                                                                                                              while(!(_loc18_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1032);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(this.§>h§);
                                                                                                                                                                                                                                                                                 break loop46;
                                                                                                                                                                                                                                                                                 §§goto(addr1013);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr1013:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                 addr593:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                    addr594:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                                                                                                                       if(_loc17_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr531:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!(_loc18_ && this))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                             continue loop86;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop32;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop5;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr592:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr476:
                                                                                                                                                                                                                                                                        §§goto(addr489);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr580);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr996);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc17_ || _loc3_))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr320);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop33;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop29;
                                                                                                                                                                                                                                                      addr619:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop61;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                                                                                                                         addr496:
                                                                                                                                                                                                                                                         if(_loc18_ && _loc3_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc17_ || this)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc13_);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr866);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr800:
                                                                                                                                                                                                                                                                     if(!(_loc18_ && param2))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr810);
                                                                                                                                                                                                                                                                        §§push(false);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr821);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr866);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr679);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop34;
                                                                                                                                                                                                                                                            addr580:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr503);
                                                                                                                                                                                                                                                         §§goto(addr597);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr887);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr977);
                                                                                                                                                                                                                                                   addr489:
                                                                                                                                                                                                                                                   §§goto(addr592);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr995);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(this.§^!z§);
                                                                                                                                                                                                                                                addr1012:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr1013);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr895);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr821);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr432);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr219);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc17_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc17_ || _loc3_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc18_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr265);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop60;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr907);
                                                                                                                                                                                                                                 continue loop60;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc17_ || param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop6;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!_loc18_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              if(!(_loc18_ && param2))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop52;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr874:
                                                                                                                                                                                                                           return false;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr800);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr865);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1056);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                      §§goto(addr1058);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr853:
                                                                                                                                                                                             }
                                                                                                                                                                                             break;
                                                                                                                                                                                             if(!(_loc17_ || param2))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                                                                             §§goto(addr306);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             addr1054:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1055);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1051);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr883);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr866);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(1);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr741);
                                                                                                                                                                              }
                                                                                                                                                                              addr669:
                                                                                                                                                                              continue loop36;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr994);
                                                                                                                                                                           §§goto(addr995);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr996);
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc18_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc17_)
                                                                                                                                                                           {
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           continue loop58;
                                                                                                                                                                        }
                                                                                                                                                                        continue loop16;
                                                                                                                                                                        §§goto(addr657);
                                                                                                                                                                     }
                                                                                                                                                                     addr657:
                                                                                                                                                                     §§goto(addr1054);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr674);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr853);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr657);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr871);
                                                                                                                                                      }
                                                                                                                                                      while(!(_loc18_ && this))
                                                                                                                                                      {
                                                                                                                                                         if(_loc17_ || param1)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc18_)
                                                                                                                                                            {
                                                                                                                                                               addr774:
                                                                                                                                                               _loc12_ = §§pop();
                                                                                                                                                               continue loop6;
                                                                                                                                                            }
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                         continue loop26;
                                                                                                                                                      }
                                                                                                                                                      continue loop30;
                                                                                                                                                      addr758:
                                                                                                                                                   }
                                                                                                                                                   continue loop13;
                                                                                                                                                }
                                                                                                                                                continue loop22;
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr906);
                                                                                                                                                §§goto(addr721);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       if(_loc17_)
                                                                                                                                       {
                                                                                                                                          continue loop0;
                                                                                                                                       }
                                                                                                                                       continue loop27;
                                                                                                                                    }
                                                                                                                                    continue loop1;
                                                                                                                                 }
                                                                                                                                 §§goto(addr597);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           continue loop17;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr469:
                                                                                                      if(!(_loc17_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      §§goto(addr476);
                                                                                                   }
                                                                                                }
                                                                                                continue loop3;
                                                                                             }
                                                                                             if(_loc18_ && _loc3_)
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§goto(addr323);
                                                                                             §§push(_loc13_);
                                                                                          }
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§goto(addr905);
                                                                                          §§goto(addr929);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr1031);
                                                                                 }
                                                                                 if(!(_loc17_ || param2))
                                                                                 {
                                                                                    continue;
                                                                                 }
                                                                                 §§goto(addr338);
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                           }
                                                                           §§goto(addr1041);
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
                  §§goto(addr1050);
               }
            }
            §§goto(addr429);
         }
         §§goto(addr80);
      }
      
      public function §]I§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§>h§.x);
         if(!(_loc7_ && _loc3_))
         {
            §§push(§§pop() - this.§^!z§.x);
            if(!_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§>h§.y);
         if(!(_loc7_ && param1))
         {
            §§push(§§pop() - this.§^!z§.y);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         §§push(this.§>h§.x);
         if(!(_loc7_ && this))
         {
            §§push(§§pop() - param1.§^!z§.x);
            if(_loc6_)
            {
               addr73:
               §§push(Number(§§pop()));
            }
            var _loc4_:* = §§pop();
            §§push(this.§>h§.y);
            if(!_loc7_)
            {
               §§push(§§pop() - param1.§^!z§.y);
               if(_loc6_)
               {
                  addr86:
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               if(_loc6_ || this)
               {
                  §§push(_loc2_);
                  loop0:
                  while(true)
                  {
                     §§push(0);
                     loop1:
                     while(true)
                     {
                        §§push(§§pop() > §§pop());
                        loop2:
                        while(true)
                        {
                           §§push(§§pop());
                           loop3:
                           while(true)
                           {
                              if(!§§pop())
                              {
                                 while(true)
                                 {
                                    §§pop();
                                    addr253:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr224:
                                       while(true)
                                       {
                                          §§push(0);
                                          addr225:
                                          while(true)
                                          {
                                             if(!_loc6_)
                                             {
                                                continue loop1;
                                             }
                                             §§push(§§pop() > §§pop());
                                          }
                                       }
                                    }
                                 }
                                 addr252:
                              }
                              while(true)
                              {
                                 loop6:
                                 while(true)
                                 {
                                    if(!§§pop())
                                    {
                                       loop7:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          loop8:
                                          while(true)
                                          {
                                             §§push(0);
                                             addr173:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(!_loc7_)
                                                {
                                                   §§push(§§pop());
                                                   if(_loc7_ && _loc2_)
                                                   {
                                                      break;
                                                   }
                                                   if(§§pop())
                                                   {
                                                      loop10:
                                                      while(true)
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!(_loc7_ && this))
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(false);
                                                                     break;
                                                                  }
                                                                  while(true)
                                                                  {
                                                                     if(_loc7_ && this)
                                                                     {
                                                                        continue loop7;
                                                                     }
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc7_ && param1)
                                                                        {
                                                                           break loop10;
                                                                        }
                                                                        §§push(_loc5_);
                                                                        if(!_loc6_)
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        if(!(_loc7_ && param1))
                                                                        {
                                                                           continue loop0;
                                                                        }
                                                                        §§goto(addr224);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr231:
                                                                        §§push(false);
                                                                        if(!(_loc7_ && _loc2_))
                                                                        {
                                                                           if(_loc6_ || this)
                                                                           {
                                                                              return §§pop();
                                                                           }
                                                                           continue loop2;
                                                                        }
                                                                        §§goto(addr252);
                                                                     }
                                                                  }
                                                                  addr195:
                                                               }
                                                            }
                                                            §§push(true);
                                                            if(!(_loc6_ || _loc3_))
                                                            {
                                                               break;
                                                            }
                                                            if(!(_loc7_ && param1))
                                                            {
                                                               return §§pop();
                                                            }
                                                         }
                                                         if(!(_loc7_ && param1))
                                                         {
                                                            return §§pop();
                                                         }
                                                         addr148:
                                                      }
                                                      §§goto(addr253);
                                                   }
                                                }
                                                while(!_loc7_)
                                                {
                                                   if(_loc7_ && _loc2_)
                                                   {
                                                      continue loop6;
                                                   }
                                                   §§pop();
                                                   §§goto(addr195);
                                                }
                                                §§goto(addr231);
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    §§goto(addr231);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr253);
            }
            §§goto(addr86);
         }
         §§goto(addr73);
      }
      
      public function §5"$§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || _loc3_)
         {
            §§push(this.§>h§);
            while(true)
            {
               §§pop().x = Math.min(param1.§>h§.x,param2.§>h§.x);
               loop1:
               while(true)
               {
                  §§push(this.§>h§);
                  if(!(_loc3_ && param2))
                  {
                     §§pop().y = Math.min(param1.§>h§.y,param2.§>h§.y);
                     do
                     {
                        §§push(this.§^!z§);
                        loop3:
                        while(true)
                        {
                           §§pop().x = Math.max(param1.§^!z§.x,param2.§^!z§.x);
                           addr80:
                           while(true)
                           {
                              if(_loc4_ || param2)
                              {
                                 continue loop3;
                              }
                              continue loop1;
                           }
                        }
                     }
                     while(!(_loc4_ || this));
                     
                     return;
                     addr117:
                  }
                  break;
               }
            }
         }
         §§goto(addr117);
      }
   }
}
