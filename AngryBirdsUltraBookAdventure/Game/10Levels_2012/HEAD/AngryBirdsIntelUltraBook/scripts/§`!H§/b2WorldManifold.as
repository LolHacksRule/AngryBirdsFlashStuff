package §`!H§
{
   import §8!H§.*;
   import §?!&§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §@^§:b2Vec2;
      
      public var § 2§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_)
         {
            this.§@^§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr43:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
            addr61:
         }
         while(true)
         {
            this.§ 2§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(_loc2_ && _loc1_)
            {
               continue;
            }
            if(!_loc2_)
            {
               if(true)
               {
                  break;
               }
            }
            else
            {
               §§goto(addr61);
            }
            §§goto(addr43);
         }
         §§push(0);
         if(_loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(_loc1_);
            if(_loc3_)
            {
               if(!_loc2_)
               {
                  if(§§pop() >= b2Settings.b2_maxManifoldPoints)
                  {
                     if(_loc3_ || this)
                     {
                        break;
                     }
                     loop4:
                     while(!(_loc3_ || this))
                     {
                        while(true)
                        {
                           _loc1_ = §§pop();
                           continue loop4;
                        }
                     }
                     continue;
                  }
                  this.§ 2§[_loc1_] = new b2Vec2();
                  while(true)
                  {
                     §§push(_loc1_);
                     if(!_loc2_)
                     {
                        §§push(§§pop() + 1);
                     }
                     §§goto(addr104);
                  }
               }
               while(true)
               {
               }
            }
            §§goto(addr104);
         }
      }
      
      public function §3!a§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
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
         if(_loc28_ || param2)
         {
            if(param1.§7I§ == 0)
            {
               if(!_loc29_)
               {
                  return;
               }
            }
         }
         §§push(param1.§@!D§);
         if(_loc28_ || this)
         {
            var _loc27_:* = §§pop();
            if(!_loc29_)
            {
               §§push(b2Manifold.§&>§);
               if(_loc28_ || param3)
               {
                  §§push(_loc27_);
                  if(!(_loc29_ && param1))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc29_)
                        {
                           §§push(0);
                           if(!(_loc29_ && param3))
                           {
                              addr2005:
                           }
                        }
                        else
                        {
                           addr2017:
                           §§push(1);
                           if(!_loc28_)
                           {
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Manifold.§0^§);
                        if(_loc28_)
                        {
                           §§push(_loc27_);
                           if(!_loc29_)
                           {
                              addr2014:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc28_)
                                 {
                                    §§goto(addr2017);
                                 }
                                 else
                                 {
                                    addr2045:
                                    §§push(2);
                                    if(!(_loc29_ && param2))
                                    {
                                       addr2066:
                                       loop116:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc8_ = param2.R;
                                             _loc7_ = param1.m_localPoint;
                                             if(_loc28_ || param2)
                                             {
                                                §§push(param2.position);
                                                if(_loc28_)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!_loc29_)
                                                   {
                                                      §§push(_loc8_.col1);
                                                      if(!_loc29_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc28_)
                                                         {
                                                            §§push(_loc7_.x);
                                                            if(!_loc29_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc29_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(!(_loc29_ && param3))
                                                                  {
                                                                     §§push(_loc8_.col2);
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(_loc28_ || param3)
                                                                        {
                                                                           §§push(_loc7_.y);
                                                                           if(_loc28_ || param2)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc29_)
                                                                              {
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc28_ || this)
                                                                                 {
                                                                                    addr152:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!(_loc29_ && param1))
                                                                                    {
                                                                                       _loc15_ = §§pop();
                                                                                       if(!_loc29_)
                                                                                       {
                                                                                          addr165:
                                                                                          §§push(param2.position.y);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             addr168:
                                                                                             §§push(_loc8_.col1.y);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                addr173:
                                                                                                §§push(_loc7_.x);
                                                                                                if(_loc28_ || param2)
                                                                                                {
                                                                                                   addr182:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                      addr214:
                                                                                                      addr215:
                                                                                                      addr185:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc28_ || param3)
                                                                                                      {
                                                                                                         addr193:
                                                                                                         §§push(_loc8_.col2.y);
                                                                                                         if(!(_loc29_ && this))
                                                                                                         {
                                                                                                            addr205:
                                                                                                            §§push(§§pop() * _loc7_.y);
                                                                                                         }
                                                                                                      }
                                                                                                      _loc16_ = §§pop();
                                                                                                      _loc8_ = param4.R;
                                                                                                      _loc7_ = param1.§ 2§[0].m_localPoint;
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         §§push(param4.position);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(!_loc29_)
                                                                                                            {
                                                                                                               §§push(_loc8_.col1);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr771:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.x);
                                                                                                                     addr773:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr774:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              addr777:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_.col2);
                                                                                                                                 addr779:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().x);
                                                                                                                                    addr780:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_.y);
                                                                                                                                       addr782:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          addr783:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              addr777:
                                                                                                                           }
                                                                                                                           addr784:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr785:
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
                                                                                                               addr770:
                                                                                                            }
                                                                                                            §§goto(addr777);
                                                                                                         }
                                                                                                         addr765:
                                                                                                      }
                                                                                                      loop12:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(param4.position);
                                                                                                         if(_loc28_ || this)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            loop13:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_.col1);
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  loop14:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.x);
                                                                                                                     loop15:
                                                                                                                     while(_loc28_ || param1)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           loop17:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_.col2);
                                                                                                                              if(_loc28_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 loop18:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.y);
                                                                                                                                    loop19:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       loop20:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          loop21:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             loop22:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                loop23:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                      loop25:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                         loop26:
                                                                                                                                                         while(!(_loc29_ && param3))
                                                                                                                                                         {
                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                            loop27:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                               loop28:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        addr700:
                                                                                                                                                                        while(_loc28_ || param1)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                        }
                                                                                                                                                                        continue loop17;
                                                                                                                                                                     }
                                                                                                                                                                     addr699:
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc20_ = §§pop();
                                                                                                                                                                     loop32:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                        loop33:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                           addr673:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              loop35:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                 loop36:
                                                                                                                                                                                 while(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                    loop37:
                                                                                                                                                                                    for(; _loc28_; while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc29_ && param3)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop37;
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr508);
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                    },continue loop19)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                       while(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                          continue loop27;
                                                                                                                                                                                          addr434:
                                                                                                                                                                                          if(!(_loc28_ || this))
                                                                                                                                                                                          {
                                                                                                                                                                                             continue;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc29_ && this)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop35;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc28_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                loop70:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc24_ = §§pop();
                                                                                                                                                                                                      loop71:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc29_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop23;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            if(!_loc29_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr284:
                                                                                                                                                                                                               if(!(_loc29_ && this))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc28_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop33;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop27;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr692:
                                                                                                                                                                                                                  loop55:
                                                                                                                                                                                                                  while(_loc28_ || param3)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                     loop56:
                                                                                                                                                                                                                     for(; _loc28_; while(_loc28_ || param1)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           this.§ 2§[0].y = 0.5 * (_loc23_ + _loc25_);
                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr243);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr660);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     })
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        loop57:
                                                                                                                                                                                                                        for(; !(_loc29_ && this); if(!(_loc28_ || param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        },§§goto(addr417),§§push(param5))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(param3);
                                                                                                                                                                                                                           loop58:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop18;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop43:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() <= §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(this.§@^§);
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(1);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                                                                             break loop56;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr595:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr628:
                                                                                                                                                                                                                                       addr603:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          addr629:
                                                                                                                                                                                                                                          loop80:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc26_);
                                                                                                                                                                                                                                             loop81:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                loop82:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                   loop83:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§@^§);
                                                                                                                                                                                                                                                      addr607:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                                                                         if(!(_loc29_ && this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc28_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop80;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(_loc26_);
                                                                                                                                                                                                                                                            if(_loc29_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop81;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop82;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§pop().y = §§pop();
                                                                                                                                                                                                                                                         loop76:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            loop48:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                                                                               addr541:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param3);
                                                                                                                                                                                                                                                                  addr542:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc28_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc29_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(this.§@^§);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                                                                                                                 addr561:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    addr562:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                       break loop57;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr332:
                                                                                                                                                                                                                                                                                 if(_loc29_ && param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop37;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc29_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          break loop71;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       addr354:
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop70;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr383:
                                                                                                                                                                                                                                                                                             addr383:
                                                                                                                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop65:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr521:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                      addr522:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop76;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(_loc29_ && param3)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                                                                                                                            continue loop65;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr693:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc21_);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop28;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop57;
                                                                                                                                                                                                                                                                                                addr407:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr385:
                                                                                                                                                                                                                                                                                             if(_loc28_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc29_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc29_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop71;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop83;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         this.§ 2§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                                                                                                                                                                                         continue loop56;
                                                                                                                                                                                                                                                                                                         addr250:
                                                                                                                                                                                                                                                                                                         if(_loc29_ && param1)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop116;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue loop48;
                                                                                                                                                                                                                                                                                                         §§goto(addr250);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr243:
                                                                                                                                                                                                                                                                                                      if(_loc29_ && param1)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         continue;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr250);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop83;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc28_ || this)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                                                                                                                                   continue loop43;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop26;
                                                                                                                                                                                                                                                                                                §§goto(addr385);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop13;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr508:
                                                                                                                                                                                                                                                                                          while(!(_loc29_ && param1))
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                while(_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   §§goto(addr284);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr785);
                                                                                                                                                                                                                                                                                                addr518:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr771);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr562);
                                                                                                                                                                                                                                                                                          §§goto(addr521);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop36;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!_loc29_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(this.§@^§);
                                                                                                                                                                                                                                                                                                while(_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().x);
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      continue loop58;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(this.§@^§);
                                                                                                                                                                                                                                                                                                   if(!(_loc28_ || param2))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr332);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                   continue loop37;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr497:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr699);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr354);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr700);
                                                                                                                                                                                                                                                                                          addr417:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§goto(addr561);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr562);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr426);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr774);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop25;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr780);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop83;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(this.§@^§);
                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       if(!_loc29_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(0);
                                                                                                                                                                                                                                          if(_loc29_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr595);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§pop().y = §§pop();
                                                                                                                                                                                                                                          §§goto(addr586);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr607);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr592:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr652:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(Math.sqrt(_loc21_)));
                                                                                                                                                                                                                                    addr657:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc29_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          _loc26_ = §§pop();
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop32;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(!(_loc28_ || this))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr628);
                                                                                                                                                                                                                                             §§push(this.§@^§);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                                                                          addr660:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr700);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop14;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop55;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc29_ && param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr603);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr652);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr592);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc21_ = §§pop();
                                                                                                                                                                                                                     §§goto(addr693);
                                                                                                                                                                                                                     §§goto(addr564);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr564:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr518);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr624);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr383);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr522);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr657);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr459:
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr784);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr459);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr783);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr773);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop20;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     if(_loc29_ && param3)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr383);
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop22;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              break;
                                                                                                                           }
                                                                                                                           §§goto(addr779);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr782);
                                                                                                                  }
                                                                                                               }
                                                                                                               else
                                                                                                               {
                                                                                                                  §§goto(addr770);
                                                                                                               }
                                                                                                               §§goto(addr771);
                                                                                                            }
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr765);
                                                                                                         }
                                                                                                         §§goto(addr777);
                                                                                                      }
                                                                                                   }
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!(_loc29_ && this))
                                                                                                   {
                                                                                                      §§goto(addr214);
                                                                                                   }
                                                                                                   §§goto(addr215);
                                                                                                }
                                                                                                §§goto(addr205);
                                                                                             }
                                                                                             §§goto(addr185);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr214);
                                                                                    }
                                                                                    §§goto(addr193);
                                                                                 }
                                                                                 §§goto(addr168);
                                                                              }
                                                                              §§goto(addr214);
                                                                           }
                                                                           §§goto(addr182);
                                                                        }
                                                                        §§goto(addr173);
                                                                     }
                                                                     §§goto(addr193);
                                                                  }
                                                                  §§goto(addr214);
                                                               }
                                                               §§goto(addr173);
                                                            }
                                                         }
                                                         §§goto(addr205);
                                                      }
                                                      §§goto(addr168);
                                                   }
                                                   §§goto(addr152);
                                                }
                                             }
                                             §§goto(addr165);
                                          case 1:
                                             _loc8_ = param2.R;
                                             _loc7_ = param1.§4!f§;
                                             if(!(_loc29_ && this))
                                             {
                                                §§push(_loc8_.col1);
                                                if(_loc28_ || param2)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc28_)
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(_loc28_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc28_)
                                                         {
                                                            §§push(_loc8_.col2);
                                                            if(!(_loc29_ && this))
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc28_)
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(!(_loc29_ && param2))
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(_loc28_)
                                                                        {
                                                                           addr850:
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc29_)
                                                                           {
                                                                              addr853:
                                                                              _loc9_ = §§pop();
                                                                              if(!_loc29_)
                                                                              {
                                                                                 addr858:
                                                                                 §§push(_loc8_.col1.y);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    §§push(_loc7_.x);
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       addr865:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc28_ || this)
                                                                                       {
                                                                                       }
                                                                                       addr890:
                                                                                       _loc10_ = §§pop();
                                                                                       _loc8_ = param2.R;
                                                                                       _loc7_ = param1.m_localPoint;
                                                                                       if(!(_loc29_ && this))
                                                                                       {
                                                                                          §§push(param2.position);
                                                                                          loop85:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             addr1105:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_.col1);
                                                                                                addr1107:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr1108:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc7_.x);
                                                                                                      addr1110:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         addr1111:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            addr1112:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc8_.col2);
                                                                                                               addr1114:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr1115:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.y);
                                                                                                                     addr1117:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr1118:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           addr1122:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc11_ = §§pop();
                                                                                                                              continue loop85;
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
                                                                                       §§goto(addr1101);
                                                                                    }
                                                                                    addr878:
                                                                                    §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                    if(_loc28_ || param2)
                                                                                    {
                                                                                       §§goto(addr890);
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr890);
                                                                           }
                                                                           addr875:
                                                                           §§push(_loc8_.col2.y);
                                                                           if(_loc29_)
                                                                           {
                                                                           }
                                                                           §§goto(addr878);
                                                                        }
                                                                        §§goto(addr890);
                                                                     }
                                                                  }
                                                                  §§goto(addr878);
                                                               }
                                                               §§goto(addr865);
                                                            }
                                                            §§goto(addr875);
                                                         }
                                                         §§goto(addr853);
                                                      }
                                                      §§goto(addr878);
                                                   }
                                                   §§goto(addr850);
                                                }
                                                §§goto(addr858);
                                             }
                                             §§goto(addr865);
                                          case 2:
                                             §§goto(addr1371);
                                       }
                                       param4.R;
                                       return;
                                       addr2066:
                                       addr2053:
                                    }
                                    else
                                    {
                                       addr2064:
                                       §§goto(addr2066);
                                    }
                                    §§goto(addr2066);
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§'!h§);
                                 if(_loc28_ || this)
                                 {
                                    §§push(_loc27_);
                                 }
                                 §§goto(addr2066);
                              }
                              §§goto(addr2066);
                           }
                           if(§§pop() === §§pop())
                           {
                              if(_loc28_)
                              {
                                 §§goto(addr2045);
                              }
                              else
                              {
                                 addr2056:
                                 §§push(3);
                                 if(_loc28_ || param2)
                                 {
                                    §§goto(addr2064);
                                 }
                                 §§goto(addr2066);
                              }
                           }
                           else
                           {
                              if(false)
                              {
                                 §§goto(addr2056);
                              }
                              else
                              {
                                 §§goto(addr2066);
                                 §§push(3);
                              }
                              §§goto(addr2066);
                           }
                           §§goto(addr2056);
                        }
                        §§goto(addr2053);
                     }
                     §§goto(addr2066);
                  }
                  §§goto(addr2014);
               }
               §§goto(addr2005);
            }
            §§goto(addr2056);
         }
         §§goto(addr2066);
      }
   }
}
