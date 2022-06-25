package §72§
{
   import §7!u§.*;
   import §>H§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §'!L§:b2Vec2;
      
      public var §,!f§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(_loc2_)
         {
            this.§'!L§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr42:
               while(true)
               {
                  super();
                  while(true)
                  {
                     if(_loc2_)
                     {
                        this.§,!f§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
                        if(_loc2_)
                        {
                           break;
                        }
                        continue;
                     }
                     continue loop0;
                  }
               }
            }
         }
         while(false)
         {
            §§goto(addr42);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc3_)
               {
                  continue;
               }
               if(!_loc3_)
               {
                  break;
               }
            }
            else
            {
               this.§,!f§[_loc1_] = new b2Vec2();
            }
            _loc1_++;
         }
      }
      
      public function §%%§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
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
         var _loc16_:* = NaN;
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
         if(!_loc28_)
         {
            if(param1.§63§ == 0)
            {
               if(!(_loc28_ && this))
               {
                  return;
               }
            }
         }
         §§push(param1.§+!?§);
         if(_loc29_ || param1)
         {
            var _loc27_:* = §§pop();
            if(!_loc28_)
            {
               §§push(b2Manifold.§"^§);
               if(!(_loc28_ && param3))
               {
                  §§push(_loc27_);
                  if(_loc29_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(_loc29_)
                        {
                           addr1917:
                           §§push(0);
                           if(_loc29_ || param2)
                           {
                           }
                        }
                        else
                        {
                           addr1956:
                           §§push(1);
                           if(!_loc28_)
                           {
                              addr1959:
                           }
                           else
                           {
                              addr1974:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Manifold.§+!M§);
                        if(_loc29_)
                        {
                           §§push(_loc27_);
                           if(_loc29_ || param1)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc28_ && param2))
                                 {
                                    §§goto(addr1956);
                                 }
                                 else
                                 {
                                    addr1971:
                                    §§push(2);
                                    if(!_loc28_)
                                    {
                                       §§goto(addr1974);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§6!X§);
                                 if(_loc29_ || param3)
                                 {
                                    addr1970:
                                    if(§§pop() === _loc27_)
                                    {
                                       §§goto(addr1971);
                                    }
                                    else
                                    {
                                       §§push(3);
                                    }
                                 }
                              }
                           }
                           §§goto(addr1970);
                        }
                     }
                     §§goto(addr1980);
                  }
                  §§goto(addr1970);
               }
               §§goto(addr1959);
            }
            §§goto(addr1917);
         }
         addr1980:
         switch(§§pop())
         {
            case 0:
               _loc8_ = param2.R;
               _loc7_ = param1.m_localPoint;
               if(_loc29_)
               {
                  §§push(param2.position);
                  if(_loc29_ || param1)
                  {
                     §§push(§§pop().x);
                     if(!(_loc28_ && param3))
                     {
                        §§push(_loc8_.col1);
                        if(!(_loc28_ && param1))
                        {
                           §§push(§§pop().x);
                           if(_loc29_)
                           {
                              §§push(_loc7_.x);
                              if(!_loc28_)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(!_loc28_)
                                 {
                                    §§push(§§pop() + §§pop());
                                    if(!_loc28_)
                                    {
                                       §§push(_loc8_.col2);
                                       if(!_loc28_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc28_ && param2))
                                          {
                                             §§push(_loc7_.y);
                                             if(!_loc28_)
                                             {
                                                addr142:
                                                §§push(§§pop() * §§pop());
                                                if(_loc29_)
                                                {
                                                   §§push(§§pop() + §§pop());
                                                   if(!(_loc28_ && param2))
                                                   {
                                                      addr153:
                                                      §§push(Number(§§pop()));
                                                      if(!(_loc28_ && this))
                                                      {
                                                         _loc15_ = §§pop();
                                                         if(!(_loc28_ && this))
                                                         {
                                                            addr171:
                                                            §§push(param2.position.y);
                                                            if(_loc29_)
                                                            {
                                                               addr174:
                                                               §§push(_loc8_.col1.y);
                                                               if(_loc29_)
                                                               {
                                                                  addr179:
                                                                  §§push(_loc7_.x);
                                                                  if(_loc29_)
                                                                  {
                                                                     addr183:
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!(_loc28_ && param3))
                                                                     {
                                                                        addr191:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc28_)
                                                                        {
                                                                           addr194:
                                                                           §§push(_loc8_.col2.y);
                                                                           if(!(_loc28_ && param1))
                                                                           {
                                                                              addr207:
                                                                              addr204:
                                                                              addr206:
                                                                              §§push(§§pop() + §§pop() * _loc7_.y);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr210:
                                                                                 §§push(Number(§§pop()));
                                                                              }
                                                                              _loc16_ = §§pop();
                                                                              _loc8_ = param4.R;
                                                                              _loc7_ = param1.§,!f§[0].m_localPoint;
                                                                              if(_loc29_ || param2)
                                                                              {
                                                                                 §§push(param4.position);
                                                                                 loop0:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    loop1:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc8_.col1);
                                                                                       loop2:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          loop3:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             if(_loc29_ || param1)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                loop4:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   addr793:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col2);
                                                                                                      addr795:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         addr796:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc7_.y);
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   loop19:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc29_ || param3))
                                                                                                      {
                                                                                                         continue loop4;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      loop20:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop21:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc18_ = §§pop();
                                                                                                            loop22:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc17_);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc15_);
                                                                                                                  loop24:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!(_loc28_ && param2))
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           break;
                                                                                                                        }
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc19_ = §§pop();
                                                                                                                        addr724:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc18_);
                                                                                                                           continue loop20;
                                                                                                                        }
                                                                                                                        loop37:
                                                                                                                        while(_loc29_ || param3)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop38:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              loop39:
                                                                                                                              while(!(_loc28_ && param3))
                                                                                                                              {
                                                                                                                                 _loc21_ = §§pop();
                                                                                                                                 loop40:
                                                                                                                                 while(_loc29_ || param3)
                                                                                                                                 {
                                                                                                                                    §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                    loop41:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc29_)
                                                                                                                                       {
                                                                                                                                          if(_loc29_ || this)
                                                                                                                                          {
                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                             {
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(Number(Math.sqrt(_loc21_)));
                                                                                                                                                   addr682:
                                                                                                                                                   addr736:
                                                                                                                                                   while(!_loc28_)
                                                                                                                                                   {
                                                                                                                                                      _loc26_ = §§pop();
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(this.§'!L§);
                                                                                                                                                         addr620:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            addr621:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc26_);
                                                                                                                                                               addr622:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                  addr623:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§pop().x = §§pop();
                                                                                                                                                                     addr624:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(this.§'!L§);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc8_.col1);
                                                                                                                                                      if(!(_loc29_ || param3))
                                                                                                                                                      {
                                                                                                                                                         break;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                      if(_loc28_)
                                                                                                                                                      {
                                                                                                                                                         continue loop19;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc7_.x);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr751:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            addr752:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc8_.col2);
                                                                                                                                                               if(!(_loc29_ || param3))
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc7_.y);
                                                                                                                                                                  addr764:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop19;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr795);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   continue loop2;
                                                                                                                                                }
                                                                                                                                                addr678:
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§push(this.§'!L§);
                                                                                                                                                loop42:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(1);
                                                                                                                                                   addr582:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§pop().x = §§pop();
                                                                                                                                                      continue loop42;
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr587);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr762);
                                                                                                                                       loop63:
                                                                                                                                       while(_loc29_ || param3)
                                                                                                                                       {
                                                                                                                                          §§push(this.§'!L§);
                                                                                                                                          loop64:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop().x);
                                                                                                                                             addr420:
                                                                                                                                             loop65:
                                                                                                                                             while(_loc29_ || param3)
                                                                                                                                             {
                                                                                                                                                if(!_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   loop66:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      loop67:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         loop68:
                                                                                                                                                         while(_loc29_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc29_)
                                                                                                                                                            {
                                                                                                                                                               _loc24_ = §§pop();
                                                                                                                                                               loop69:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc29_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc29_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param5);
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       addr331:
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          addr333:
                                                                                                                                                                                          if(!(_loc28_ && param1))
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc28_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   if(_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr352:
                                                                                                                                                                                                      if(_loc28_ && param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop21;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr362:
                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop68;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop67;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr366:
                                                                                                                                                                                                         if(!(_loc28_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc29_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               _loc25_ = §§pop();
                                                                                                                                                                                                               loop70:
                                                                                                                                                                                                               for(; _loc29_ || param2; while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc29_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§,!f§[0].y = 0.5 * (_loc23_ + _loc25_);
                                                                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue loop69;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop0;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop22;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  continue loop70;
                                                                                                                                                                                                               },§§goto(addr616))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        this.§,!f§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                                                                                                        continue loop70;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop69;
                                                                                                                                                                                                                     addr255:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  loop31:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                        if(_loc29_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           while(!_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr634);
                                                                                                                                                                                                                              §§push(_loc20_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc20_ = §§pop();
                                                                                                                                                                                                                              continue loop31;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr707:
                                                                                                                                                                                                                           addr631:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr638:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop37;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr489:
                                                                                                                                                                                                                        if(!(_loc29_ || param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                                                                        while(!(_loc28_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc29_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc17_);
                                                                                                                                                                                                                              loop62:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc29_ || param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(!(_loc28_ && param3))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(param5);
                                                                                                                                                                                                                                       continue loop63;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr800:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       break loop40;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr485:
                                                                                                                                                                                                                                 while(_loc29_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop40;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr489);
                                                                                                                                                                                                                                    continue loop62;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop38;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(_loc29_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                 break loop70;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop37;
                                                                                                                                                                                                                              addr393:
                                                                                                                                                                                                                              addr536:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr724);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr685);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr445);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr444:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                                  §§goto(addr381);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr381:
                                                                                                                                                                                                               §§goto(addr624);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr682);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr393);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr752);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr362);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr638);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr530);
                                                                                                                                                                                          }
                                                                                                                                                                                          while(_loc29_)
                                                                                                                                                                                          {
                                                                                                                                                                                             addr474:
                                                                                                                                                                                             if(!(_loc29_ || param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc29_ || this))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop24;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr474);
                                                                                                                                                                                                }
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                                addr696:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr485);
                                                                                                                                                                                             §§goto(addr707);
                                                                                                                                                                                             §§goto(addr333);
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop39;
                                                                                                                                                                                          addr472:
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop66;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop63;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc29_ || param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop64;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr524:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§'!L§);
                                                                                                                                                                                          addr526:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop().x);
                                                                                                                                                                                             addr527:
                                                                                                                                                                                             while(_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                while(_loc29_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                   break loop68;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(!_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                   break loop69;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr796);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr764);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(!(_loc28_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§'!L§);
                                                                                                                                                                                       while(_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                          break loop65;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr526);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr751);
                                                                                                                                                                                    addr445:
                                                                                                                                                                                    §§goto(addr634);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr793);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr631);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr444);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr352);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr573);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr497);
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr638);
                                                                                                                                                               }
                                                                                                                                                               addr637:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr706);
                                                                                                                                                         }
                                                                                                                                                         while(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr536);
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                         }
                                                                                                                                                         continue loop20;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr750);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc29_ || param3)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc28_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr472);
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      break loop41;
                                                                                                                                                   }
                                                                                                                                                   addr798:
                                                                                                                                                }
                                                                                                                                                break;
                                                                                                                                                §§goto(addr420);
                                                                                                                                             }
                                                                                                                                             §§goto(addr527);
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr800);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                    continue loop0;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  continue loop1;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr798);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr253);
                                                                           }
                                                                           §§goto(addr207);
                                                                        }
                                                                        §§goto(addr210);
                                                                     }
                                                                     §§goto(addr204);
                                                                  }
                                                                  §§goto(addr206);
                                                               }
                                                               §§goto(addr207);
                                                            }
                                                            §§goto(addr194);
                                                         }
                                                         §§goto(addr207);
                                                      }
                                                   }
                                                   §§goto(addr174);
                                                }
                                                §§goto(addr191);
                                             }
                                             §§goto(addr183);
                                          }
                                          §§goto(addr207);
                                       }
                                       §§goto(addr194);
                                    }
                                    §§goto(addr153);
                                 }
                                 §§goto(addr207);
                              }
                              §§goto(addr142);
                           }
                           §§goto(addr179);
                        }
                        §§goto(addr174);
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr171);
               }
               §§goto(addr207);
            case 1:
               _loc8_ = param2.R;
               _loc7_ = param1.§=i§;
               if(_loc29_ || this)
               {
                  §§push(_loc8_.col1);
                  if(_loc29_ || this)
                  {
                     §§push(§§pop().x);
                     if(!_loc28_)
                     {
                        §§push(_loc7_.x);
                        if(_loc29_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc28_ && param2))
                           {
                              addr849:
                              §§push(_loc8_.col2);
                              if(!(_loc28_ && param1))
                              {
                                 §§push(§§pop().x);
                                 if(_loc29_)
                                 {
                                    §§push(_loc7_.y);
                                    if(_loc29_)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc28_)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(_loc29_ || param2)
                                          {
                                             §§push(Number(§§pop()));
                                             if(!(_loc28_ && param1))
                                             {
                                                _loc9_ = §§pop();
                                                if(!_loc28_)
                                                {
                                                   addr889:
                                                   §§push(_loc8_.col1.y);
                                                   if(_loc29_)
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(!(_loc28_ && param2))
                                                      {
                                                         addr901:
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc29_)
                                                         {
                                                            addr904:
                                                            §§push(_loc8_.col2.y);
                                                            if(_loc29_)
                                                            {
                                                               addr912:
                                                               addr911:
                                                               addr909:
                                                               §§push(§§pop() + §§pop() * _loc7_.y);
                                                               if(_loc28_)
                                                               {
                                                               }
                                                               addr916:
                                                               _loc10_ = §§pop();
                                                               _loc8_ = param2.R;
                                                               _loc7_ = param1.m_localPoint;
                                                               if(!(_loc28_ && param1))
                                                               {
                                                                  §§push(param2.position);
                                                                  loop84:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop().x);
                                                                     addr1109:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_.col1);
                                                                        addr1111:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           if(!(_loc28_ && this))
                                                                           {
                                                                              §§push(_loc7_.x);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 addr1124:
                                                                                 §§push(§§pop() * §§pop());
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc29_)
                                                                                    {
                                                                                       §§push(_loc8_.col2);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1130:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_.y);
                                                                                             addr1132:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                addr1133:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr1129:
                                                                                    }
                                                                                    addr1134:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       addr1135:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          continue loop84;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 addr1124:
                                                                              }
                                                                              §§goto(addr1132);
                                                                           }
                                                                           §§goto(addr1124);
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               §§goto(addr1378);
                                                            }
                                                            §§goto(addr912);
                                                         }
                                                         §§goto(addr916);
                                                         §§push(Number(§§pop()));
                                                      }
                                                      §§goto(addr912);
                                                   }
                                                }
                                             }
                                             §§goto(addr912);
                                          }
                                          §§goto(addr904);
                                       }
                                       §§goto(addr901);
                                    }
                                    §§goto(addr911);
                                 }
                                 §§goto(addr909);
                              }
                           }
                           §§goto(addr904);
                        }
                        §§goto(addr912);
                     }
                     §§goto(addr849);
                  }
                  §§goto(addr889);
               }
               §§goto(addr912);
            case 2:
               §§goto(addr1382);
         }
         param4.R;
      }
   }
}
