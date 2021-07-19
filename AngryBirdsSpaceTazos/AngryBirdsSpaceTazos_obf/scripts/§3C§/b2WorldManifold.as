package §3c§
{
   import §9t§.*;
   import §@!'§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §?!A§:b2Vec2;
      
      public var §,!T§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!_loc3_)
         {
            this.§?!A§ = new b2Vec2();
         }
         while(true)
         {
            while(true)
            {
               super();
               do
               {
                  this.§,!T§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
               }
               while(!_loc2_);
               
               if(!_loc3_)
               {
                  if(true)
                  {
                     var _loc1_:int = 0;
                     while(true)
                     {
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(_loc3_)
                           {
                              continue;
                           }
                           if(!(_loc3_ && _loc1_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§,!T§[_loc1_] = new b2Vec2();
                        }
                        _loc1_++;
                     }
                  }
                  continue;
                  return;
               }
               break;
            }
         }
      }
      
      public function §>`§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = false;
         var _loc29_:Boolean = true;
         var _loc6_:int = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:b2Mat22 = null;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
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
         var _loc25_:Number = NaN;
         var _loc26_:* = NaN;
         if(_loc29_)
         {
            if(param1.§[!J§ == 0)
            {
               if(_loc29_)
               {
                  return;
               }
            }
         }
         §§push(param1.§0w§);
         if(!(_loc28_ && param3))
         {
            var _loc27_:* = §§pop();
            if(_loc29_ || param1)
            {
               §§push(b2Manifold.§#m§);
               if(_loc29_)
               {
                  §§push(_loc27_);
                  if(_loc29_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc28_ && param2))
                        {
                           §§push(0);
                           if(_loc28_ && param1)
                           {
                              addr1969:
                              if(§§pop() === _loc27_)
                              {
                                 addr1971:
                                 §§push(2);
                                 if(_loc29_ || param2)
                                 {
                                    addr1989:
                                 }
                              }
                              else
                              {
                                 §§push(3);
                              }
                           }
                           addr1995:
                           loop133:
                           switch(§§pop())
                           {
                              case 0:
                                 _loc8_ = param2.R;
                                 _loc7_ = param1.m_localPoint;
                                 if(!_loc28_)
                                 {
                                    §§push(param2.position);
                                    if(!_loc28_)
                                    {
                                       §§push(§§pop().x);
                                       if(!(_loc28_ && this))
                                       {
                                          §§push(_loc8_.col1);
                                          if(_loc29_ || this)
                                          {
                                             §§push(§§pop().x);
                                             if(!_loc28_)
                                             {
                                                §§push(_loc7_.x);
                                                if(_loc29_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc28_ && param3))
                                                      {
                                                         addr121:
                                                         §§push(_loc8_.col2);
                                                         if(_loc29_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(_loc29_ || param2)
                                                            {
                                                               addr133:
                                                               §§push(_loc7_.y);
                                                               if(!(_loc28_ && param1))
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                                  if(!(_loc28_ && param1))
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc28_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(_loc29_ || this)
                                                                        {
                                                                           _loc15_ = §§pop();
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr166:
                                                                              §§push(param2.position.y);
                                                                              if(!(_loc28_ && this))
                                                                              {
                                                                                 addr176:
                                                                                 §§push(_loc8_.col1.y);
                                                                                 if(_loc29_)
                                                                                 {
                                                                                    addr179:
                                                                                    §§push(_loc7_.x);
                                                                                    if(!(_loc28_ && this))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          addr211:
                                                                                          addr196:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc29_)
                                                                                          {
                                                                                             addr201:
                                                                                             §§push(_loc8_.col2.y);
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                addr206:
                                                                                                §§push(§§pop() * _loc7_.y);
                                                                                             }
                                                                                          }
                                                                                          _loc16_ = §§pop();
                                                                                          _loc8_ = param4.R;
                                                                                          _loc7_ = param1.§,!T§[0].m_localPoint;
                                                                                          if(!(_loc28_ && param2))
                                                                                          {
                                                                                             §§push(param4.position);
                                                                                             loop0:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr772:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   addr774:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop().x);
                                                                                                      addr775:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_.x);
                                                                                                         if(!(_loc28_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               addr786:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  addr788:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop().x);
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        addr793:
                                                                                                                        §§push(_loc7_.y);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                        addr793:
                                                                                                                     }
                                                                                                                     addr794:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        addr795:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           addr796:
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
                                                                                                            addr785:
                                                                                                         }
                                                                                                         §§goto(addr793);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             addr771:
                                                                                          }
                                                                                          loop11:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(param4.position);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                loop12:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc8_.col1);
                                                                                                   if(!(_loc28_ && param2))
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc7_.x);
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                               loop15:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc8_.col2);
                                                                                                                  if(_loc29_)
                                                                                                                  {
                                                                                                                     §§push(§§pop().y);
                                                                                                                     loop16:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc7_.y);
                                                                                                                        addr748:
                                                                                                                        loop17:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop18:
                                                                                                                           while(_loc29_ || param3)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              loop19:
                                                                                                                              while(_loc29_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 loop20:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                    loop21:
                                                                                                                                    while(_loc29_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc17_);
                                                                                                                                       loop22:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          loop23:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             loop24:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop25:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc19_ = §§pop();
                                                                                                                                                   loop26:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc18_);
                                                                                                                                                      if(!(_loc28_ && param3))
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc16_);
                                                                                                                                                         loop27:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc28_)
                                                                                                                                                            {
                                                                                                                                                               if(_loc29_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                  loop28:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     loop29:
                                                                                                                                                                     while(!(_loc28_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        _loc20_ = §§pop();
                                                                                                                                                                        loop30:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc19_);
                                                                                                                                                                           loop31:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                              if(_loc29_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                    addr422:
                                                                                                                                                                                    if(_loc28_ && param3)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop12;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(param5);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop27;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(this.§?!A§);
                                                                                                                                                                                       loop63:
                                                                                                                                                                                       while(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().x);
                                                                                                                                                                                          loop64:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      break;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop65:
                                                                                                                                                                                                   while(!(_loc28_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                      loop66:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc28_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc29_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               loop67:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc29_ || param2)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc24_ = §§pop();
                                                                                                                                                                                                                     loop68:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                        if(_loc29_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop67;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr344:
                                                                                                                                                                                                                        addr500:
                                                                                                                                                                                                                        addr344:
                                                                                                                                                                                                                        if(_loc29_ || this)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr351:
                                                                                                                                                                                                                           if(_loc28_ && this)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc29_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc29_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param3);
                                                                                                                                                                                                                                          break loop65;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr685);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr351);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop25;
                                                                                                                                                                                                                              addr475:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr358:
                                                                                                                                                                                                                           if(!(_loc28_ && this))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr365:
                                                                                                                                                                                                                              if(_loc29_ || param1)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop22;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop28;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              while(!(_loc28_ && param3))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 _loc22_ = §§pop();
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc29_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr592:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr507:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc15_);
                                                                                                                                                                                                                                          addr509:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(param3);
                                                                                                                                                                                                                                             addr510:
                                                                                                                                                                                                                                             addr667:
                                                                                                                                                                                                                                             while(!_loc28_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop16;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                addr668:
                                                                                                                                                                                                                                                while(_loc29_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                      addr672:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc21_ = §§pop();
                                                                                                                                                                                                                                                         break loop66;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr365);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr396:
                                                                                                                                                                                                                                    if(_loc29_ || param2)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc28_ && param2))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          loop70:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             this.§,!T§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                                                                                                                             while(_loc29_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                this.§,!T§[0].y = 0.5 * (_loc23_ + _loc25_);
                                                                                                                                                                                                                                                if(!(_loc29_ || this))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                if(_loc29_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc29_ || this)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop70;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr686:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(this.§?!A§);
                                                                                                                                                                                                                                                      loop78:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                         loop79:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc26_);
                                                                                                                                                                                                                                                            loop80:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                               loop81:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§pop().x = §§pop();
                                                                                                                                                                                                                                                                  addr657:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(this.§?!A§);
                                                                                                                                                                                                                                                                     addr620:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc29_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop78;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc28_ && param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop81;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(_loc26_);
                                                                                                                                                                                                                                                                           if(!(_loc29_ || param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop80;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc28_ && param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop79;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().y = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr507);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop81;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                loop43:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc28_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(this.§?!A§);
                                                                                                                                                                                                                                                         if(!(_loc28_ && param2))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr583:
                                                                                                                                                                                                                                                            §§push(0);
                                                                                                                                                                                                                                                            if(_loc29_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                               §§goto(addr592);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                                                                               continue loop43;
                                                                                                                                                                                                                                                               §§goto(addr583);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr606:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                         addr616:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr657);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr649);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc28_ && this))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr606);
                                                                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr620);
                                                                                                                                                                                                                                                   §§goto(addr616);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr387:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop68;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr389:
                                                                                                                                                                                                                                                if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr396);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop67;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!(_loc28_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr422);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr668);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr681:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(Math.sqrt(_loc21_)));
                                                                                                                                                                                                                                                         addr685:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            _loc26_ = §§pop();
                                                                                                                                                                                                                                                            §§goto(addr686);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr389);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr772);
                                                                                                                                                                                                                                                   addr504:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop26;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop21;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop26;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop30;
                                                                                                                                                                                                                                 §§goto(addr358);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr786);
                                                                                                                                                                                                                              addr555:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr671);
                                                                                                                                                                                                                           §§goto(addr509);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           addr501:
                                                                                                                                                                                                                           while(_loc29_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc23_ = §§pop();
                                                                                                                                                                                                                              §§goto(addr504);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop31;
                                                                                                                                                                                                                           §§goto(addr344);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop20;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr772);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr540:
                                                                                                                                                                                                         while(_loc29_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc28_ && param2)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop15;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr555);
                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                            continue loop66;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop29;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                                         addr678:
                                                                                                                                                                                                         while(_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() > §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr681);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr598);
                                                                                                                                                                                                               §§push(this.§?!A§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr620);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr785);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(this.§?!A§);
                                                                                                                                                                                                         break loop63;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                      §§goto(addr446);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr446:
                                                                                                                                                                                                   continue loop18;
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr667);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr666:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr494:
                                                                                                                                                                                             addr522:
                                                                                                                                                                                             while(!_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr497);
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             while(_loc29_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc28_ && param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         break;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr540);
                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr672);
                                                                                                                                                                                                   addr306:
                                                                                                                                                                                                   if(_loc28_ && this)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§?!A§);
                                                                                                                                                                                                      if(!_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop63;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop64;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr323);
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr678);
                                                                                                                                                                                                }
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr666);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop17;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr793);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr494);
                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                       }
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§goto(addr522);
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc29_ || param2))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr306);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr665);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop24;
                                                                                                                                                                  }
                                                                                                                                                                  addr702:
                                                                                                                                                               }
                                                                                                                                                               break;
                                                                                                                                                            }
                                                                                                                                                            continue loop23;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr794);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr702);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    continue loop11;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr795);
                                                                                                                           }
                                                                                                                           §§goto(addr775);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  break;
                                                                                                               }
                                                                                                               §§goto(addr788);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr748);
                                                                                                         if(_loc28_ && param2)
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(_loc29_ || this)
                                                                                                         {
                                                                                                            §§goto(addr344);
                                                                                                         }
                                                                                                         §§goto(addr384);
                                                                                                      }
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§goto(addr774);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr771);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr210:
                                                                                          §§goto(addr211);
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       §§goto(addr211);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr206);
                                                                              }
                                                                           }
                                                                           §§goto(addr211);
                                                                        }
                                                                        §§goto(addr210);
                                                                     }
                                                                     §§goto(addr211);
                                                                  }
                                                                  §§goto(addr196);
                                                               }
                                                               §§goto(addr206);
                                                            }
                                                            §§goto(addr179);
                                                         }
                                                         §§goto(addr201);
                                                      }
                                                      §§goto(addr211);
                                                   }
                                                   §§goto(addr133);
                                                }
                                                §§goto(addr206);
                                             }
                                             §§goto(addr133);
                                          }
                                          §§goto(addr176);
                                       }
                                       §§goto(addr121);
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr211);
                              case 1:
                                 _loc8_ = param2.R;
                                 _loc7_ = param1.§0"B§;
                                 if(!_loc28_)
                                 {
                                    §§push(_loc8_.col1);
                                    if(_loc29_)
                                    {
                                       §§push(§§pop().x);
                                       if(_loc29_ || this)
                                       {
                                          §§push(_loc7_.x);
                                          if(!_loc28_)
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(!_loc28_)
                                             {
                                                §§push(_loc8_.col2);
                                                if(_loc29_ || this)
                                                {
                                                   §§push(§§pop().x);
                                                   if(_loc29_ || this)
                                                   {
                                                      §§push(_loc7_.y);
                                                      if(!_loc28_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc28_ && param3))
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!_loc28_)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               if(_loc29_)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  if(!(_loc28_ && this))
                                                                  {
                                                                     addr874:
                                                                     §§push(_loc8_.col1.y);
                                                                     if(!(_loc28_ && param3))
                                                                     {
                                                                        addr882:
                                                                        §§push(_loc7_.x);
                                                                        if(_loc29_)
                                                                        {
                                                                           addr886:
                                                                           §§push(§§pop() * §§pop());
                                                                           if(!_loc28_)
                                                                           {
                                                                              addr889:
                                                                              §§push(_loc8_.col2.y);
                                                                              if(_loc29_)
                                                                              {
                                                                                 addr897:
                                                                                 addr896:
                                                                                 addr894:
                                                                                 §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                 if(_loc29_ || param2)
                                                                                 {
                                                                                 }
                                                                                 addr906:
                                                                                 _loc10_ = §§pop();
                                                                                 _loc8_ = param2.R;
                                                                                 _loc7_ = param1.m_localPoint;
                                                                                 if(_loc29_ || this)
                                                                                 {
                                                                                    §§push(param2.position);
                                                                                    loop82:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop().x);
                                                                                       if(_loc29_ || param2)
                                                                                       {
                                                                                          §§push(_loc8_.col1);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop().x);
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(_loc7_.x);
                                                                                                if(!(_loc28_ && param3))
                                                                                                {
                                                                                                   addr1104:
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc29_ || this)
                                                                                                      {
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
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr1112:
                                                                                                      }
                                                                                                      addr1119:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr1120:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc11_ = §§pop();
                                                                                                            continue loop82;
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   addr1104:
                                                                                                }
                                                                                                §§goto(addr1117);
                                                                                             }
                                                                                             §§goto(addr1104);
                                                                                             addr986:
                                                                                             §§push(_loc8_.col1);
                                                                                             if(!(_loc29_ || param3))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(§§pop().y);
                                                                                             if(_loc29_)
                                                                                             {
                                                                                                if(!_loc28_)
                                                                                                {
                                                                                                   if(_loc29_ || param1)
                                                                                                   {
                                                                                                      §§push(_loc7_.x);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         if(_loc29_ || param2)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc29_)
                                                                                                            {
                                                                                                               addr1031:
                                                                                                               if(_loc29_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                  {
                                                                                                                     addr1046:
                                                                                                                     §§push(_loc8_.col2);
                                                                                                                     if(!(_loc28_ && param1))
                                                                                                                     {
                                                                                                                        §§push(§§pop().y);
                                                                                                                        if(_loc29_ || param1)
                                                                                                                        {
                                                                                                                           addr1063:
                                                                                                                           §§push(§§pop() * _loc7_.y);
                                                                                                                        }
                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                        if(_loc29_ || param2)
                                                                                                                        {
                                                                                                                           addr1074:
                                                                                                                           if(!_loc28_)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr1119);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        _loc12_ = §§pop();
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(this.§?!A§);
                                                                                                                           loop90:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              addr967:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§pop().x = §§pop();
                                                                                                                                 if(!_loc29_)
                                                                                                                                 {
                                                                                                                                    break loop133;
                                                                                                                                 }
                                                                                                                                 addr1363:
                                                                                                                                 addr1363:
                                                                                                                                 continue loop90;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr1114);
                                                                                                                     }
                                                                                                                     §§goto(addr1119);
                                                                                                                  }
                                                                                                                  §§goto(addr1074);
                                                                                                               }
                                                                                                               §§goto(addr1118);
                                                                                                            }
                                                                                                            §§goto(addr1063);
                                                                                                         }
                                                                                                         §§goto(addr1117);
                                                                                                      }
                                                                                                      §§goto(addr1063);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr1104);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr1115);
                                                                                             }
                                                                                             §§goto(addr1031);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr1112);
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1363);
                                                                              }
                                                                              §§goto(addr897);
                                                                           }
                                                                           §§goto(addr906);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr897);
                                                                     }
                                                                  }
                                                                  §§goto(addr897);
                                                               }
                                                               §§goto(addr889);
                                                            }
                                                         }
                                                         §§goto(addr897);
                                                      }
                                                      §§goto(addr896);
                                                   }
                                                   §§goto(addr886);
                                                }
                                                §§goto(addr889);
                                             }
                                             §§goto(addr882);
                                          }
                                          §§goto(addr894);
                                       }
                                       §§goto(addr882);
                                    }
                                    §§goto(addr874);
                                 }
                                 §§goto(addr897);
                              case 2:
                                 §§goto(addr1367);
                           }
                           param4.R;
                           return;
                           addr1994:
                        }
                        §§goto(addr1971);
                     }
                     else
                     {
                        §§push(b2Manifold.§%p§);
                        if(_loc29_)
                        {
                           §§push(_loc27_);
                           if(!_loc28_)
                           {
                              if(§§pop() === §§pop())
                              {
                                 if(!(_loc28_ && this))
                                 {
                                    addr1951:
                                    §§push(1);
                                    if(_loc28_ && param3)
                                    {
                                    }
                                 }
                                 else
                                 {
                                    §§goto(addr1971);
                                 }
                                 §§goto(addr1994);
                              }
                              else
                              {
                                 §§push(b2Manifold.§9!&§);
                                 if(!(_loc28_ && param2))
                                 {
                                    §§goto(addr1969);
                                 }
                              }
                              §§goto(addr1989);
                           }
                        }
                        §§goto(addr1969);
                     }
                  }
               }
               §§goto(addr1969);
            }
            §§goto(addr1951);
         }
         §§goto(addr1995);
      }
   }
}
