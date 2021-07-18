package §-r§
{
   import §"0§.*;
   import §6!H§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §?!B§:b2Vec2;
      
      public var §@Z§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§?!B§ = new b2Vec2();
            while(true)
            {
               loop1:
               while(true)
               {
                  super();
                  do
                  {
                     this.§@Z§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                  }
                  while(_loc2_);
                  
                  if(_loc3_)
                  {
                     while(false)
                     {
                        continue loop1;
                     }
                     var _loc1_:int = 0;
                     while(true)
                     {
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(!(_loc3_ || _loc2_))
                           {
                              continue;
                           }
                           if(_loc3_ || this)
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§@Z§[_loc1_] = new b2Vec2();
                        }
                        _loc1_++;
                     }
                     return;
                     addr33:
                  }
                  break;
               }
            }
         }
         §§goto(addr33);
      }
      
      public function §#!O§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:Number = NaN;
         var _loc13_:Number = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:* = NaN;
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(_loc29_)
         {
            if(param1.§break§ == 0)
            {
               if(_loc29_)
               {
                  §§goto(addr69);
               }
            }
            §§push(param1.§#!&§);
            if(!(_loc28_ && this))
            {
               var _loc27_:* = §§pop();
               if(_loc29_)
               {
                  §§push(b2Manifold.§6C§);
                  if(!(_loc28_ && param2))
                  {
                     §§push(_loc27_);
                     if(!(_loc28_ && param3))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc29_)
                           {
                              §§push(0);
                              if(!_loc29_)
                              {
                                 addr1975:
                                 §§push(_loc27_);
                                 if(_loc29_ || param2)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(_loc29_)
                                       {
                                          addr1986:
                                          §§push(1);
                                          if(_loc29_ || param1)
                                          {
                                             addr1994:
                                          }
                                       }
                                       else
                                       {
                                          addr2001:
                                          §§push(2);
                                          if(!_loc29_)
                                          {
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§push(b2Manifold.§&!5§);
                                       if(!_loc28_)
                                       {
                                          addr2000:
                                          if(§§pop() === _loc27_)
                                          {
                                             §§goto(addr2001);
                                          }
                                          else
                                          {
                                             §§push(3);
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr2000);
                              }
                              §§goto(addr2020);
                           }
                           §§goto(addr1986);
                        }
                        else
                        {
                           §§push(b2Manifold.§>E§);
                           if(!_loc28_)
                           {
                              §§goto(addr1975);
                           }
                        }
                        §§goto(addr1994);
                     }
                     §§goto(addr2000);
                  }
                  §§goto(addr1975);
               }
               §§goto(addr2001);
            }
            addr2020:
            loop131:
            switch(§§pop())
            {
               case 0:
                  _loc8_ = param2.R;
                  _loc7_ = param1.m_localPoint;
                  if(!_loc28_)
                  {
                     §§push(param2.position);
                     if(_loc29_ || param3)
                     {
                        §§push(§§pop().x);
                        if(_loc29_ || param1)
                        {
                           §§push(_loc8_.col1);
                           if(_loc29_)
                           {
                              §§push(§§pop().x);
                              if(!_loc28_)
                              {
                                 §§push(_loc7_.x);
                                 if(!_loc28_)
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!(_loc28_ && this))
                                    {
                                       §§push(§§pop() + §§pop());
                                       if(_loc29_ || this)
                                       {
                                          §§push(_loc8_.col2);
                                          if(_loc29_ || this)
                                          {
                                             §§push(§§pop().x);
                                             if(_loc29_)
                                             {
                                                §§push(_loc7_.y);
                                                if(!(_loc28_ && param1))
                                                {
                                                   addr147:
                                                   §§push(§§pop() * §§pop());
                                                   if(!(_loc28_ && param2))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc29_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(_loc29_ || param3)
                                                         {
                                                            _loc15_ = §§pop();
                                                            if(_loc29_ || param3)
                                                            {
                                                               addr176:
                                                               §§push(param2.position.y);
                                                               if(_loc29_)
                                                               {
                                                                  addr179:
                                                                  §§push(_loc8_.col1.y);
                                                                  if(!(_loc28_ && param3))
                                                                  {
                                                                     addr189:
                                                                     §§push(_loc7_.x);
                                                                     if(_loc29_)
                                                                     {
                                                                        addr193:
                                                                        §§push(§§pop() * §§pop());
                                                                        if(!(_loc28_ && this))
                                                                        {
                                                                           §§push(§§pop() + §§pop());
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr212:
                                                                              §§push(_loc8_.col2.y);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr209:
                                                                                 §§push(_loc7_.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc29_ || param3)
                                                                              {
                                                                                 addr221:
                                                                                 _loc16_ = §§pop();
                                                                                 _loc8_ = param4.R;
                                                                                 _loc7_ = param1.§@Z§[0].m_localPoint;
                                                                                 if(_loc29_ || param1)
                                                                                 {
                                                                                    §§push(param4.position);
                                                                                    loop0:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       addr796:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          addr798:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr799:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc7_.x);
                                                                                                addr801:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   addr802:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      addr803:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         addr805:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr806:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.y);
                                                                                                               addr808:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr809:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr810:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        addr811:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc17_ = §§pop();
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
                                                                                       }
                                                                                    }
                                                                                    addr795:
                                                                                 }
                                                                                 loop13:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(param4.position);
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§push(§§pop().y);
                                                                                       loop14:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          if(!_loc29_)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(§§pop().y);
                                                                                          if(_loc29_ || param2)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr776:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr777:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col2);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(§§pop().y);
                                                                                                      while(!_loc28_)
                                                                                                      {
                                                                                                         §§push(_loc7_.y);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr809);
                                                                                                   }
                                                                                                   §§goto(addr805);
                                                                                                }
                                                                                             }
                                                                                             addr775:
                                                                                          }
                                                                                          loop20:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             loop21:
                                                                                             while(!_loc28_)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc18_ = §§pop();
                                                                                                   addr792:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc17_);
                                                                                                      addr743:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc15_);
                                                                                                         addr744:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            continue loop14;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop81:
                                                                                                   while(_loc29_ || param1)
                                                                                                   {
                                                                                                      _loc26_ = §§pop();
                                                                                                      loop82:
                                                                                                      while(_loc29_)
                                                                                                      {
                                                                                                         §§push(this.§?!B§);
                                                                                                         loop75:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc19_);
                                                                                                            if(!(_loc28_ && param1))
                                                                                                            {
                                                                                                               §§push(_loc26_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                               }
                                                                                                               addr653:
                                                                                                            }
                                                                                                            loop77:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§pop().x = §§pop();
                                                                                                               loop74:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(this.§?!B§);
                                                                                                                  loop78:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc20_);
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        if(_loc28_ && param3)
                                                                                                                        {
                                                                                                                           continue loop77;
                                                                                                                        }
                                                                                                                        §§push(_loc26_);
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr653);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§pop().y = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        loop48:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc15_);
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              if(!(_loc28_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(param3);
                                                                                                                                 loop49:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc28_ && param3))
                                                                                                                                    {
                                                                                                                                       if(!(_loc28_ && param1))
                                                                                                                                       {
                                                                                                                                          §§push(this.§?!B§);
                                                                                                                                          loop50:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             loop51:
                                                                                                                                             while(!(_loc28_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop52:
                                                                                                                                                while(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   loop53:
                                                                                                                                                   while(!(_loc28_ && param1))
                                                                                                                                                   {
                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                      loop54:
                                                                                                                                                      while(_loc29_)
                                                                                                                                                      {
                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop82;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc28_ && this)
                                                                                                                                                                  {
                                                                                                                                                                     break;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(param3);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  loop61:
                                                                                                                                                                  while(!(_loc28_ && param2))
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc29_ || param2)
                                                                                                                                                                     {
                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                           addr413:
                                                                                                                                                                           loop63:
                                                                                                                                                                           for(; _loc29_ || param2; if(!(_loc29_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           },if(_loc28_ && param3)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop61;
                                                                                                                                                                           },if(!(_loc29_ || param3))
                                                                                                                                                                           {
                                                                                                                                                                              continue loop81;
                                                                                                                                                                           },§§push(param5),if(!_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr335);
                                                                                                                                                                           },§§goto(addr366))
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(param5);
                                                                                                                                                                                 loop64:
                                                                                                                                                                                 while(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(this.§?!B§);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                          addr430:
                                                                                                                                                                                          addr497:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().x);
                                                                                                                                                                                       while(_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc29_ || param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr444:
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   while(!(_loc28_ && this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc29_ || param1)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         loop68:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            loop69:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop54;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc29_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc24_ = §§pop();
                                                                                                                                                                                                                  loop70:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                     if(_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop63;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr385:
                                                                                                                                                                                                                     if(_loc28_ && param3)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop69;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop68;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc25_ = §§pop();
                                                                                                                                                                                                                           loop71:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc28_ && param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       this.§@Z§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                                                                                                                       addr290:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop70;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop71;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr270:
                                                                                                                                                                                                                                       if(!(_loc29_ || param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          break loop131;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr792);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 else
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop81;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr710:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              else
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop46:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§?!B§);
                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc29_ || param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop78;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop75;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc28_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop74;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr606:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§pop().x = §§pop();
                                                                                                                                                                                                                                          continue loop46;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr620:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr620);
                                                                                                                                                                                                                                    §§goto(addr621);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr621:
                                                                                                                                                                                                                                 addr619:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop13;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr796);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr743);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop81;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr753:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                  addr727:
                                                                                                                                                                                                                  while(_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                                                                        addr731:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           addr732:
                                                                                                                                                                                                                           while(_loc29_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc20_ = §§pop();
                                                                                                                                                                                                                              break loop82;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr810);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr777);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop53;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr802);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                      addr694:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         break loop53;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr444);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr444:
                                                                                                                                                                                                   addr693:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr801);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr786);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr693);
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr775);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr782);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(_loc29_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          break loop64;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§?!B§);
                                                                                                                                                                                       addr353:
                                                                                                                                                                                       continue loop51;
                                                                                                                                                                                       if(_loc28_ && this)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                       if(_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr366:
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc29_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(!(_loc28_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr704:
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr385);
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                                         addr709:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr710);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr619);
                                                                                                                                                                                                               §§push(this.§?!B§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr704:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr385);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr730);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr709);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr444);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       else
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr430);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr777);
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop50;
                                                                                                                                                                                    if(!(_loc29_ || param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr342:
                                                                                                                                                                                    if(!(_loc29_ || param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       while(_loc29_ || param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§?!B§);
                                                                                                                                                                                          continue loop50;
                                                                                                                                                                                          §§goto(addr342);
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop20;
                                                                                                                                                                                       addr480:
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop52;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr353);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr782);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr507:
                                                                                                                                                                                    if(_loc29_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       break loop63;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr673:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc28_ && param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          break loop61;
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       §§goto(addr507);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr776);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr690);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr689:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr727);
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop61;
                                                                                                                                                                              §§goto(addr413);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr803);
                                                                                                                                                                  }
                                                                                                                                                                  while(!(_loc28_ && param3))
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr689);
                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                     §§goto(addr516);
                                                                                                                                                                  }
                                                                                                                                                                  addr516:
                                                                                                                                                                  §§goto(addr732);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr480);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr606);
                                                                                                                                                         }
                                                                                                                                                         continue loop21;
                                                                                                                                                      }
                                                                                                                                                      continue loop14;
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop());
                                                                                                                                                      break loop52;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                while(_loc29_ || param3)
                                                                                                                                                {
                                                                                                                                                   _loc21_ = §§pop();
                                                                                                                                                   §§goto(addr704);
                                                                                                                                                }
                                                                                                                                                §§goto(addr799);
                                                                                                                                             }
                                                                                                                                             §§goto(addr808);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    §§goto(addr744);
                                                                                                                                 }
                                                                                                                                 §§goto(addr806);
                                                                                                                              }
                                                                                                                              §§goto(addr694);
                                                                                                                           }
                                                                                                                           §§goto(addr572);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc19_);
                                                                                                         if(!(_loc28_ && param1))
                                                                                                         {
                                                                                                            if(_loc29_ || this)
                                                                                                            {
                                                                                                               §§goto(addr673);
                                                                                                               §§push(_loc19_);
                                                                                                            }
                                                                                                            break;
                                                                                                         }
                                                                                                         §§goto(addr704);
                                                                                                      }
                                                                                                      §§goto(addr731);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr811);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr798);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§goto(addr795);
                                                                                    }
                                                                                 }
                                                                                 addr220:
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                           §§goto(addr220);
                                                                        }
                                                                        §§goto(addr209);
                                                                     }
                                                                     §§goto(addr212);
                                                                     §§push(§§pop() * §§pop());
                                                                  }
                                                                  §§goto(addr209);
                                                               }
                                                            }
                                                            §§goto(addr221);
                                                         }
                                                         §§goto(addr179);
                                                      }
                                                      §§goto(addr212);
                                                   }
                                                   §§goto(addr209);
                                                }
                                                §§goto(addr193);
                                             }
                                             §§goto(addr209);
                                          }
                                          §§goto(addr212);
                                       }
                                       §§goto(addr221);
                                    }
                                    §§goto(addr212);
                                 }
                                 §§goto(addr147);
                              }
                              §§goto(addr189);
                           }
                        }
                        §§goto(addr179);
                     }
                     §§goto(addr176);
                  }
                  §§goto(addr221);
               case 1:
                  _loc8_ = param2.R;
                  _loc7_ = param1.§7!A§;
                  if(!_loc28_)
                  {
                     §§push(_loc8_.col1);
                     if(!(_loc28_ && param2))
                     {
                        §§push(§§pop().x);
                        if(!(_loc28_ && param1))
                        {
                           §§push(_loc7_.x);
                           if(!_loc28_)
                           {
                              §§push(§§pop() * §§pop());
                              if(!(_loc28_ && param1))
                              {
                                 addr854:
                                 §§push(_loc8_.col2);
                                 if(_loc29_ || param3)
                                 {
                                    §§push(§§pop().x);
                                    if(!_loc28_)
                                    {
                                       §§push(_loc7_.y);
                                       if(_loc29_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc28_ && this))
                                          {
                                             addr878:
                                             §§push(§§pop() + §§pop());
                                             if(_loc29_ || param3)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc28_)
                                                {
                                                   addr889:
                                                   _loc9_ = §§pop();
                                                   if(!(_loc28_ && param2))
                                                   {
                                                      addr899:
                                                      addr897:
                                                      §§push(_loc8_.col1.y);
                                                      if(_loc29_)
                                                      {
                                                         §§push(_loc7_.x);
                                                         if(_loc29_ || this)
                                                         {
                                                            addr931:
                                                            addr911:
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc29_)
                                                            {
                                                               addr916:
                                                               §§push(_loc8_.col2.y);
                                                               if(_loc29_)
                                                               {
                                                                  addr921:
                                                                  §§push(§§pop() * _loc7_.y);
                                                               }
                                                            }
                                                            _loc10_ = §§pop();
                                                            _loc8_ = param2.R;
                                                            _loc7_ = param1.m_localPoint;
                                                            if(_loc29_ || param2)
                                                            {
                                                               §§push(param2.position);
                                                               loop83:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  addr1121:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc8_.col1);
                                                                     addr1123:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        addr1124:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc7_.x);
                                                                           addr1126:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              addr1127:
                                                                              loop88:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 addr1128:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_.col2);
                                                                                    addr1130:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc29_)
                                                                                       {
                                                                                          §§push(_loc7_.y);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                          }
                                                                                          addr1135:
                                                                                       }
                                                                                       addr1136:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr1137:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             addr1138:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   continue loop83;
                                                                                                }
                                                                                             }
                                                                                             continue loop88;
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
                                                            §§goto(addr1378);
                                                         }
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc28_ && param2)
                                                         {
                                                         }
                                                      }
                                                      §§goto(addr931);
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                §§goto(addr931);
                                             }
                                             §§goto(addr889);
                                          }
                                          §§goto(addr911);
                                       }
                                       §§goto(addr921);
                                    }
                                    §§goto(addr878);
                                 }
                              }
                              §§goto(addr916);
                           }
                           §§goto(addr931);
                        }
                        §§goto(addr854);
                     }
                     §§goto(addr899);
                  }
                  §§goto(addr897);
               case 2:
                  §§goto(addr1382);
            }
            param4.R;
            return;
         }
         addr69:
      }
   }
}
