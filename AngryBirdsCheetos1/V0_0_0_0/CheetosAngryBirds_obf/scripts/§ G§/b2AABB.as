package § G§
{
   import §9"§.b2Vec2;
   
   public class b2AABB
   {
       
      
      public var § 1§:b2Vec2;
      
      public var §,e§:b2Vec2;
      
      public function b2AABB()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!(_loc2_ && _loc2_))
         {
            this.§ 1§ = new b2Vec2();
            do
            {
               this.§,e§ = new b2Vec2();
               do
               {
                  super();
               }
               while(_loc2_ && _loc1_);
               
            }
            while(_loc2_);
            
         }
      }
      
      public static function §]!6§(param1:b2AABB, param2:b2AABB) : b2AABB
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2AABB = new b2AABB();
         if(_loc5_ || param2)
         {
            _loc3_.§]!6§(param1,param2);
         }
         return _loc3_;
      }
      
      public function §6!W§() : Boolean
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         §§push(this.§,e§.x);
         if(_loc5_)
         {
            §§push(§§pop() - this.§ 1§.x);
            if(_loc5_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc1_:* = §§pop();
         §§push(this.§,e§.y);
         if(!_loc4_)
         {
            §§push(§§pop() - this.§ 1§.y);
            if(!_loc4_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         if(!_loc4_)
         {
            §§push(_loc1_);
            if(!_loc4_)
            {
               §§push(0);
               if(!_loc4_)
               {
                  §§push(§§pop() >= §§pop());
                  if(_loc5_)
                  {
                     if(§§pop())
                     {
                        if(_loc5_ || _loc3_)
                        {
                           §§pop();
                           addr66:
                           §§push(_loc2_ >= 0);
                           if(_loc5_ || this)
                           {
                              addr74:
                              §§push(Boolean(§§pop()));
                           }
                        }
                        var _loc3_:* = §§pop();
                        if(!_loc4_)
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
                                 loop2:
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
                                             §§push(this.§ 1§.§6!W§());
                                             while(!_loc4_)
                                             {
                                                if(_loc4_)
                                                {
                                                   continue loop0;
                                                }
                                                §§push(Boolean(§§pop()));
                                                loop10:
                                                for(; _loc5_ || _loc2_; if(!(_loc5_ || _loc2_))
                                                {
                                                   continue;
                                                },§§goto(addr107))
                                                {
                                                   §§push(Boolean(§§pop()));
                                                   while(!_loc4_)
                                                   {
                                                      loop12:
                                                      while(true)
                                                      {
                                                         §§push(Boolean(§§pop()));
                                                         loop13:
                                                         while(true)
                                                         {
                                                            if(_loc5_ || _loc3_)
                                                            {
                                                               if(!_loc4_)
                                                               {
                                                                  _loc3_ = §§pop();
                                                                  if(_loc4_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!(_loc5_ || _loc2_))
                                                                  {
                                                                     break loop12;
                                                                  }
                                                                  continue;
                                                               }
                                                               addr156:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(!_loc5_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(!§§pop())
                                                                  {
                                                                     continue loop12;
                                                                  }
                                                               }
                                                               continue loop2;
                                                            }
                                                            while(true)
                                                            {
                                                               §§pop();
                                                               break loop13;
                                                            }
                                                         }
                                                         while(true)
                                                         {
                                                            continue loop10;
                                                         }
                                                      }
                                                      continue loop4;
                                                      if(_loc5_ || _loc2_)
                                                      {
                                                         continue loop10;
                                                      }
                                                   }
                                                   continue loop1;
                                                }
                                             }
                                             continue loop3;
                                          }
                                       }
                                    }
                                    while(true)
                                    {
                                       §§goto(addr156);
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr145);
                     }
                  }
                  §§goto(addr74);
               }
            }
         }
         §§goto(addr66);
      }
      
      public function §&&§() : b2Vec2
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§ 1§.x);
         if(_loc2_ || _loc1_)
         {
            §§push(this.§,e§.x);
            if(!(_loc1_ && this))
            {
               §§push(§§pop() + §§pop());
               if(_loc2_)
               {
                  addr53:
                  §§push(§§pop() / 2);
                  §§push(this.§ 1§.y);
                  if(_loc2_)
                  {
                     §§push(§§pop() + this.§,e§.y);
                     if(_loc1_ && this)
                     {
                     }
                     §§goto(addr81);
                  }
                  §§push(§§pop() / 2);
               }
               §§goto(addr53);
            }
            addr81:
            return new §§pop().b2Vec2(§§pop(),§§pop());
         }
         §§goto(addr53);
      }
      
      public function §[!=§() : b2Vec2
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         §§push(§§findproperty(b2Vec2));
         §§push(this.§,e§.x);
         if(_loc1_ || this)
         {
            §§push(this.§ 1§.x);
            if(!_loc2_)
            {
               §§push(§§pop() - §§pop());
               if(_loc1_)
               {
                  addr47:
                  §§push(§§pop() / 2);
                  §§push(this.§,e§.y);
                  if(_loc1_)
                  {
                     §§push(§§pop() - this.§ 1§.y);
                     if(_loc1_)
                     {
                        addr68:
                        §§push(§§pop() / 2);
                     }
                     return new §§pop().b2Vec2(§§pop(),§§pop());
                  }
               }
               §§goto(addr47);
            }
            §§goto(addr68);
         }
         §§goto(addr47);
      }
      
      public function §2!A§(param1:b2AABB) : Boolean
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:* = true;
         if(!_loc3_)
         {
            §§push(_loc2_);
            while(true)
            {
               §§push(Boolean(§§pop()));
               while(true)
               {
                  §§push(§§pop());
                  addr304:
                  while(true)
                  {
                     if(!§§pop())
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
                                                   §§push(this.§ 1§);
                                                   if(!_loc3_)
                                                   {
                                                      §§push(§§pop().y);
                                                      while(true)
                                                      {
                                                         §§push(param1.§ 1§);
                                                         if(_loc4_)
                                                         {
                                                            §§push(§§pop().y);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() <= §§pop());
                                                               addr268:
                                                               while(true)
                                                               {
                                                                  loop14:
                                                                  while(true)
                                                                  {
                                                                     §§push(Boolean(§§pop()));
                                                                     addr270:
                                                                     while(true)
                                                                     {
                                                                        _loc2_ = §§pop();
                                                                        addr271:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc2_);
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         break;
                                                      }
                                                      while(true)
                                                      {
                                                         §§goto(addr286);
                                                      }
                                                   }
                                                   break;
                                                }
                                                while(true)
                                                {
                                                   §§goto(addr283);
                                                }
                                             }
                                          }
                                          §§goto(addr268);
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                     §§goto(addr305);
                  }
               }
               if(_loc3_ && _loc2_)
               {
                  continue;
               }
               §§push(§§pop());
               if(!_loc3_)
               {
                  if(_loc4_ || param1)
                  {
                     if(§§pop())
                     {
                        §§goto(addr153);
                     }
                     §§goto(addr78);
                  }
                  §§goto(addr304);
               }
               §§goto(addr230);
            }
         }
         §§goto(addr306);
      }
      
      public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput) : Boolean
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
         var _loc11_:b2Vec2 = null;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         §§push(-Number.MAX_VALUE);
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc3_:* = §§pop();
         var _loc4_:* = Number(Number.MAX_VALUE);
         §§push(param2.p1.x);
         if(_loc18_ || _loc3_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(param2.p1.y);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(param2.p2.x);
         if(_loc18_)
         {
            §§push(§§pop() - param2.p1.x);
            if(_loc18_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc7_:* = §§pop();
         §§push(param2.p2.y);
         if(!_loc17_)
         {
            §§push(§§pop() - param2.p1.y);
            if(_loc18_ || _loc3_)
            {
               addr94:
               §§push(Number(§§pop()));
            }
            var _loc8_:* = §§pop();
            var _loc9_:Number = Math.abs(_loc7_);
            var _loc10_:Number = Math.abs(_loc8_);
            _loc11_ = param1.normal;
            if(!(_loc17_ && _loc3_))
            {
               §§push(_loc9_);
               loop0:
               while(true)
               {
                  if(§§pop() < Number.MIN_VALUE)
                  {
                     loop1:
                     while(true)
                     {
                        §§push(_loc5_);
                        loop2:
                        while(true)
                        {
                           §§push(this.§ 1§);
                           loop3:
                           while(true)
                           {
                              §§push(§§pop().x);
                              loop4:
                              while(true)
                              {
                                 §§push(§§pop() < §§pop());
                                 loop5:
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    loop6:
                                    while(true)
                                    {
                                       if(!§§pop())
                                       {
                                          loop7:
                                          while(true)
                                          {
                                             §§pop();
                                             loop8:
                                             while(true)
                                             {
                                                §§push(this.§,e§);
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(§§pop().x);
                                                   addr933:
                                                   while(true)
                                                   {
                                                      §§push(_loc5_);
                                                      addr934:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() < §§pop());
                                                         addr935:
                                                         while(!_loc17_)
                                                         {
                                                         }
                                                         continue loop7;
                                                      }
                                                   }
                                                   addr558:
                                                   if(_loc17_ && this)
                                                   {
                                                      continue;
                                                   }
                                                   addr566:
                                                   §§push(§§pop().y);
                                                   while(_loc18_)
                                                   {
                                                      continue loop0;
                                                   }
                                                   loop118:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_);
                                                      loop119:
                                                      while(!_loc17_)
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            loop120:
                                                            while(true)
                                                            {
                                                               _loc11_.x = _loc16_;
                                                               loop121:
                                                               while(true)
                                                               {
                                                                  _loc11_.y = 0;
                                                                  loop122:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc13_);
                                                                     loop123:
                                                                     while(true)
                                                                     {
                                                                        if(_loc18_)
                                                                        {
                                                                           addr791:
                                                                           if(_loc17_ && _loc3_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc3_ = §§pop();
                                                                              continue loop120;
                                                                           }
                                                                           addr799:
                                                                        }
                                                                        addr882:
                                                                        loop107:
                                                                        while(_loc18_ || _loc3_)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           loop108:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              loop109:
                                                                              for(; _loc18_; while(!(_loc17_ && this))
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 §§goto(addr843);
                                                                              })
                                                                              {
                                                                                 if(_loc18_)
                                                                                 {
                                                                                    if(!(_loc18_ || this))
                                                                                    {
                                                                                       continue loop2;
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                    loop110:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc13_ = §§pop();
                                                                                       loop111:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc15_);
                                                                                          loop112:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop113:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc14_ = §§pop();
                                                                                                loop114:
                                                                                                while(_loc18_)
                                                                                                {
                                                                                                   §§push(1);
                                                                                                   while(!_loc17_)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      continue loop109;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop101:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc16_ = §§pop();
                                                                                                         addr895:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc13_);
                                                                                                            break loop123;
                                                                                                            addr807:
                                                                                                            if(_loc17_ && param1)
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                               loop127:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc4_ = §§pop();
                                                                                                                  loop128:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc3_);
                                                                                                                     loop129:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc4_);
                                                                                                                        loop130:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           if(§§pop() <= §§pop())
                                                                                                                           {
                                                                                                                              loop15:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc10_);
                                                                                                                                 loop16:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(§§pop() >= Number.MIN_VALUE)
                                                                                                                                    {
                                                                                                                                       §§push(1);
                                                                                                                                       loop17:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc18_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc8_);
                                                                                                                                             if(!(_loc18_ || this))
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                             loop18:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop19:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc12_ = §§pop();
                                                                                                                                                   loop20:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      if(_loc18_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc18_)
                                                                                                                                                         {
                                                                                                                                                            continue loop114;
                                                                                                                                                         }
                                                                                                                                                         if(_loc18_ || this)
                                                                                                                                                         {
                                                                                                                                                            §§push(this.§ 1§);
                                                                                                                                                            if(_loc18_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               loop21:
                                                                                                                                                               while(!_loc17_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc6_);
                                                                                                                                                                  loop22:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     loop23:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc12_);
                                                                                                                                                                        loop24:
                                                                                                                                                                        while(_loc18_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           while(_loc18_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop26:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc17_ && this))
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc13_ = §§pop();
                                                                                                                                                                                    loop27:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§,e§);
                                                                                                                                                                                       if(_loc18_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr558);
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          loop76:
                                                                                                                                                                                          while(!_loc17_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().y);
                                                                                                                                                                                             loop73:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc6_);
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc17_ && this)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop130;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                      loop70:
                                                                                                                                                                                                      while(!_loc17_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop64:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr708:
                                                                                                                                                                                                               if(_loc17_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop15;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc17_ && param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop121;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc18_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(false);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr941:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop15;
                                                                                                                                                                                                                     §§goto(addr941);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr920:
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop74:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  loop72:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     param1.fraction = _loc3_;
                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc17_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr133:
                                                                                                                                                                                                                           if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           loop40:
                                                                                                                                                                                                                           while(_loc18_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                              loop41:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!(_loc18_ || this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop127;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc18_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    loop42:
                                                                                                                                                                                                                                    while(!(_loc17_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc15_ = §§pop();
                                                                                                                                                                                                                                       loop43:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             addr449:
                                                                                                                                                                                                                                             while(_loc18_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc13_ = §§pop();
                                                                                                                                                                                                                                                continue loop43;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr546:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                                                                addr547:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop50:
                                                                                                                                                                                                                                             for(; !(_loc17_ && this); while(_loc18_ || param1)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop42;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   _loc3_ = §§pop();
                                                                                                                                                                                                                                                   §§goto(addr308);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc5_);
                                                                                                                                                                                                                                                   addr901:
                                                                                                                                                                                                                                                   while(_loc18_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr905);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break loop119;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr916);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr159);
                                                                                                                                                                                                                                             })
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc16_ = §§pop();
                                                                                                                                                                                                                                                loop51:
                                                                                                                                                                                                                                                while(_loc18_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop52:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                                                                      loop53:
                                                                                                                                                                                                                                                      while(!_loc17_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr345:
                                                                                                                                                                                                                                                         if(_loc18_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop21;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!(_loc18_ || param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop73;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop113;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop101;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(_loc18_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                                                                               loop54:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc17_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc18_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           loop66:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(Math.min(_loc4_,_loc14_)));
                                                                                                                                                                                                                                                                              addr266:
                                                                                                                                                                                                                                                                              loop67:
                                                                                                                                                                                                                                                                              while(_loc18_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc17_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop64;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop67;
                                                                                                                                                                                                                                                                                    addr245:
                                                                                                                                                                                                                                                                                    §§push(_loc3_);
                                                                                                                                                                                                                                                                                    if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop67;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr166:
                                                                                                                                                                                                                                                                                    if(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc18_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc17_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop123;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(_loc4_);
                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop54;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   if(!_loc17_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!(_loc18_ || this))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop4;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop72;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(_loc17_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§goto(addr245);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr211:
                                                                                                                                                                                                                                                                                                            if(_loc17_ && _loc3_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc11_.y = _loc16_;
                                                                                                                                                                                                                                                                                                                     loop56:
                                                                                                                                                                                                                                                                                                                     for(; _loc18_; while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr331:
                                                                                                                                                                                                                                                                                                                           if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(_loc18_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!_loc17_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    if(_loc18_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       continue loop50;
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    continue loop18;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop53;
                                                                                                                                                                                                                                                                                                                                 §§goto(addr166);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                                                                                                                              addr279:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop108;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                                                                                                                     },while(!(_loc17_ && this))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§goto(addr445);
                                                                                                                                                                                                                                                                                                                        §§goto(addr331);
                                                                                                                                                                                                                                                                                                                     },continue loop20)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc18_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc11_.x = 0;
                                                                                                                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop51;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop111;
                                                                                                                                                                                                                                                                                                                  §§goto(addr211);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop111;
                                                                                                                                                                                                                                                                                                               addr373:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(false);
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc17_ && param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr725:
                                                                                                                                                                                                                                                                                                                  if(_loc18_ || this)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop5;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop70;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr228);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr777);
                                                                                                                                                                                                                                                                                                            §§goto(addr755);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr747);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc17_ && this)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop129;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc17_ && param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop110;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(_loc18_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  break loop67;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr915);
                                                                                                                                                                                                                                                                                                               §§goto(addr345);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop129;
                                                                                                                                                                                                                                                                                                            addr590:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop119;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop119;
                                                                                                                                                                                                                                                                                                      addr587:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(!(_loc17_ && _loc3_))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§goto(addr133);
                                                                                                                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop52;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr914);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr566);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr587);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr449);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(!_loc17_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                          §§goto(addr438);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr799);
                                                                                                                                                                                                                                                                                       addr435:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr279);
                                                                                                                                                                                                                                                                                    while(_loc18_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr252:
                                                                                                                                                                                                                                                                                       if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop72;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr843:
                                                                                                                                                                                                                                                                                       addr843:
                                                                                                                                                                                                                                                                                       addr308:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc18_ || _loc3_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc17_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc17_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop66;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr739:
                                                                                                                                                                                                                                                                                             while(_loc18_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§ 1§);
                                                                                                                                                                                                                                                                                                   if(!_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                      loop62:
                                                                                                                                                                                                                                                                                                      while(!_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                                                                         if(!_loc18_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop64;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§pop();
                                                                                                                                                                                                                                                                                                            addr755:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc18_ || param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop128;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!(_loc17_ && param2))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§,e§);
                                                                                                                                                                                                                                                                                                                     continue loop76;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr928:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(this.§ 1§);
                                                                                                                                                                                                                                                                                                                     addr912:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                                        addr913:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                           addr914:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                              addr915:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                                                                                                                 addr916:
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    addr917:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                       break loop109;
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
                                                                                                                                                                                                                                                                                                                  continue loop101;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop128;
                                                                                                                                                                                                                                                                                                            addr228:
                                                                                                                                                                                                                                                                                                            if(_loc18_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!_loc17_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     return §§pop();
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr777);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               continue loop62;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr940);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop3;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop1;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr612:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc18_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc18_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(-1);
                                                                                                                                                                                                                                                                                                   while(_loc18_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§goto(addr546);
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                                                                      if(_loc17_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(_loc18_ || param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                         continue loop50;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr832);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop17;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop122;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop74;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop122;
                                                                                                                                                                                                                                                                                          §§goto(addr252);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr820:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop118;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop4;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(!_loc17_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc18_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc14_ = §§pop();
                                                                                                                                                                                                                                                                                    §§goto(addr612);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr933);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              loop82:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 _loc12_ = §§pop();
                                                                                                                                                                                                                                                                                 §§goto(addr928);
                                                                                                                                                                                                                                                                                 addr926:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop82;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr373);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop24;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  break loop107;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr905:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr917);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr590);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop41;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop43;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc18_ || _loc3_))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop42;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(!(_loc18_ || this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop109;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc18_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr435);
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr904);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop109;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc14_ = §§pop();
                                                                                                                                                                                                                                       §§goto(addr908);
                                                                                                                                                                                                                                       break loop107;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr907:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr913);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop127;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop8;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr324);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr245);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop27;
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr725);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr777:
                                                                                                                                                                                                         addr777:
                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                         §§push(false);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr935);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   continue loop130;
                                                                                                                                                                                                   addr696:
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop112;
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop112;
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr900);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr899:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr566);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr742);
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc17_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 continue;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc17_ && this)
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop23;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr501);
                                                                                                                                                                              §§push(_loc14_);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop107;
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr934);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr912);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr899);
                                                                                                                                                            §§push(this.§,e§);
                                                                                                                                                            break loop109;
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr708);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          else
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc7_);
                                                                                                                                                break loop17;
                                                                                                                                             }
                                                                                                                                             addr924:
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§goto(addr926);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr739);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr776);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr832:
                                                                                                }
                                                                                                addr878:
                                                                                                while(true)
                                                                                                {
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      §§goto(addr881);
                                                                                                      §§push(_loc13_);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      addr939:
                                                                                                      addr940:
                                                                                                      return §§pop();
                                                                                                      §§push(false);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 else
                                                                                 {
                                                                                    §§goto(addr926);
                                                                                 }
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 _loc13_ = §§pop();
                                                                                 §§goto(addr919);
                                                                              }
                                                                           }
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr907);
                                                                           §§goto(addr882);
                                                                        }
                                                                     }
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        break loop119;
                                                                        §§goto(addr791);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr779);
                                                      }
                                                      while(!(_loc17_ && this))
                                                      {
                                                         if(§§pop() > §§pop())
                                                         {
                                                            §§goto(addr878);
                                                         }
                                                         §§goto(addr820);
                                                      }
                                                      §§goto(addr901);
                                                   }
                                                   addr566:
                                                }
                                             }
                                          }
                                       }
                                       while(!§§pop())
                                       {
                                          §§goto(addr920);
                                       }
                                       §§goto(addr939);
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
                  else
                  {
                     §§push(1);
                  }
                  §§goto(addr924);
               }
            }
            §§goto(addr843);
         }
         §§goto(addr94);
      }
      
      public function §;!4§(param1:b2AABB) : Boolean
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         §§push(param1.§ 1§.x);
         if(_loc6_ || param1)
         {
            §§push(§§pop() - this.§,e§.x);
            if(_loc6_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc2_:* = §§pop();
         §§push(param1.§ 1§.y);
         if(!_loc7_)
         {
            §§push(§§pop() - this.§,e§.y);
            if(!(_loc7_ && _loc2_))
            {
               addr50:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            §§push(this.§ 1§.x);
            if(!(_loc7_ && _loc3_))
            {
               §§push(§§pop() - param1.§,e§.x);
               if(!_loc7_)
               {
                  addr68:
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(this.§ 1§.y);
               if(!_loc7_)
               {
                  §§push(§§pop() - param1.§,e§.y);
                  if(_loc6_)
                  {
                     §§push(Number(§§pop()));
                  }
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
                                 loop4:
                                 while(true)
                                 {
                                    §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       while(true)
                                       {
                                          §§push(0);
                                          addr204:
                                          while(_loc6_ || this)
                                          {
                                             §§push(§§pop() > §§pop());
                                          }
                                          continue loop1;
                                          loop11:
                                          while(_loc6_ || _loc2_)
                                          {
                                             §§push(0);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() > §§pop());
                                                if(!_loc7_)
                                                {
                                                   if(_loc6_)
                                                   {
                                                      if(!(_loc6_ || this))
                                                      {
                                                         continue loop4;
                                                      }
                                                      §§push(§§pop());
                                                      if(!_loc6_)
                                                      {
                                                         continue loop3;
                                                      }
                                                      if(§§pop())
                                                      {
                                                         while(true)
                                                         {
                                                            if(§§pop())
                                                            {
                                                               if(!_loc6_)
                                                               {
                                                                  if(!(_loc6_ || _loc3_))
                                                                  {
                                                                     return false;
                                                                  }
                                                                  addr225:
                                                                  addr91:
                                                                  §§push(true);
                                                                  if(_loc7_)
                                                                  {
                                                                     break;
                                                                  }
                                                                  if(_loc6_ || param1)
                                                                  {
                                                                     if(_loc6_)
                                                                     {
                                                                        return §§pop();
                                                                     }
                                                                     continue loop2;
                                                                  }
                                                                  addr139:
                                                                  while(_loc7_)
                                                                  {
                                                                     while(true)
                                                                     {
                                                                        §§pop();
                                                                     }
                                                                  }
                                                                  continue;
                                                               }
                                                               if(_loc6_)
                                                               {
                                                                  if(_loc6_)
                                                                  {
                                                                     §§push(false);
                                                                     break;
                                                                  }
                                                                  break loop12;
                                                               }
                                                               while(!(_loc7_ && _loc3_))
                                                               {
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc5_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        continue loop0;
                                                                     }
                                                                     continue loop11;
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               while(true)
                                                               {
                                                                  continue loop11;
                                                               }
                                                               addr166:
                                                            }
                                                            §§goto(addr91);
                                                         }
                                                         if(_loc6_ || _loc2_)
                                                         {
                                                            return §§pop();
                                                         }
                                                         §§goto(addr225);
                                                      }
                                                      §§goto(addr192);
                                                   }
                                                   else
                                                   {
                                                      while(true)
                                                      {
                                                         if(§§pop())
                                                         {
                                                            §§goto(addr225);
                                                         }
                                                      }
                                                      addr213:
                                                   }
                                                   §§goto(addr166);
                                                }
                                                §§goto(addr192);
                                             }
                                             continue loop5;
                                          }
                                       }
                                    }
                                 }
                              }
                              while(true)
                              {
                                 §§goto(addr213);
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr200);
            }
            §§goto(addr68);
         }
         §§goto(addr50);
      }
      
      public function §]!6§(param1:b2AABB, param2:b2AABB) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            §§push(this.§ 1§);
            while(true)
            {
               §§pop().x = Math.min(param1.§ 1§.x,param2.§ 1§.x);
               while(true)
               {
                  §§push(this.§ 1§);
                  if(!_loc4_)
                  {
                     break;
                  }
                  §§pop().y = Math.min(param1.§ 1§.y,param2.§ 1§.y);
                  loop2:
                  while(_loc4_ || this)
                  {
                     §§push(this.§,e§);
                     loop3:
                     while(true)
                     {
                        §§pop().x = Math.max(param1.§,e§.x,param2.§,e§.x);
                        addr73:
                        while(_loc4_)
                        {
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr75);
      }
   }
}
