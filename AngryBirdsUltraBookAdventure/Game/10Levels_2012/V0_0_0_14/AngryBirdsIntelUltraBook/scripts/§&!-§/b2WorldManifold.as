package §&!-§
{
   import §8>§.*;
   import §;u§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §=![§:b2Vec2;
      
      public var §<8§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(!_loc2_)
         {
            this.§=![§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr48:
               while(true)
               {
                  super();
                  addr51:
                  while(!_loc2_)
                  {
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§<8§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(_loc3_ || this)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr48);
            }
            §§goto(addr51);
         }
         var _loc1_:int = 0;
         while(true)
         {
            if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
            {
               if(_loc2_)
               {
                  continue;
               }
               if(_loc3_ || _loc1_)
               {
                  break;
               }
            }
            else
            {
               this.§<8§[_loc1_] = new b2Vec2();
            }
            _loc1_++;
         }
      }
      
      public function §7R§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
      {
         var _loc28_:Boolean = true;
         var _loc29_:Boolean = false;
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
         var _loc16_:Number = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(!(_loc29_ && this))
         {
            if(param1.§]B§ == 0)
            {
               if(!_loc29_)
               {
                  §§goto(addr73);
               }
            }
            §§push(param1.§"!1§);
            if(_loc28_ || this)
            {
               var _loc27_:* = §§pop();
               if(!_loc29_)
               {
                  §§push(b2Manifold.§,!y§);
                  if(!(_loc29_ && param1))
                  {
                     §§push(_loc27_);
                     if(_loc28_ || param2)
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc28_ || param3)
                           {
                              addr1941:
                              §§push(0);
                              if(!(_loc28_ || this))
                              {
                                 addr1988:
                              }
                              loop132:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.m_localPoint;
                                    if(_loc28_ || param3)
                                    {
                                       §§push(param2.position);
                                       if(!_loc29_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc28_)
                                          {
                                             §§push(_loc8_.col1);
                                             if(_loc28_ || this)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc28_ || param3)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(_loc28_ || param3)
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(_loc28_ || param2)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc28_ || param1)
                                                         {
                                                            addr140:
                                                            §§push(_loc8_.col2);
                                                            if(!_loc29_)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!_loc29_)
                                                               {
                                                                  addr147:
                                                                  §§push(_loc7_.y);
                                                                  if(_loc28_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!(_loc29_ && param2))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(!_loc29_)
                                                                           {
                                                                              _loc15_ = §§pop();
                                                                              if(!(_loc29_ && param2))
                                                                              {
                                                                                 addr175:
                                                                                 §§push(param2.position.y);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    addr180:
                                                                                    §§push(_loc8_.col1.y);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       §§push(_loc7_.x);
                                                                                       if(!(_loc29_ && this))
                                                                                       {
                                                                                          addr192:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(!(_loc29_ && param2))
                                                                                          {
                                                                                             addr224:
                                                                                             addr225:
                                                                                             addr200:
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!(_loc29_ && param3))
                                                                                             {
                                                                                                addr208:
                                                                                                §§push(_loc8_.col2.y);
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                   addr215:
                                                                                                   §§push(§§pop() * _loc7_.y);
                                                                                                }
                                                                                             }
                                                                                             _loc16_ = §§pop();
                                                                                             _loc8_ = param4.R;
                                                                                             _loc7_ = param1.§<8§[0].m_localPoint;
                                                                                             if(_loc28_ || param2)
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
                                                                                                            loop4:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc28_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_.col2);
                                                                                                                     addr799:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr800:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_.y);
                                                                                                                           addr802:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr377:
                                                                                                                     if(_loc29_ && param3)
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     addr385:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(!_loc29_)
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           if(!_loc29_)
                                                                                                                           {
                                                                                                                              _loc25_ = §§pop();
                                                                                                                              loop70:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(!_loc29_)
                                                                                                                                 {
                                                                                                                                    if(_loc28_ || param2)
                                                                                                                                    {
                                                                                                                                       addr401:
                                                                                                                                       if(_loc28_ || param1)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             this.§<8§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                             continue loop70;
                                                                                                                                             addr258:
                                                                                                                                             if(!_loc28_)
                                                                                                                                             {
                                                                                                                                                break;
                                                                                                                                             }
                                                                                                                                             if(true)
                                                                                                                                             {
                                                                                                                                                break loop132;
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          loop28:
                                                                                                                                          while(!(_loc29_ && this))
                                                                                                                                          {
                                                                                                                                             §§push(_loc18_);
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc16_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                }
                                                                                                                                                addr719:
                                                                                                                                             }
                                                                                                                                             loop30:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                loop31:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   _loc20_ = §§pop();
                                                                                                                                                   addr722:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                      if(!_loc29_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            loop33:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop34:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                  loop35:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc20_);
                                                                                                                                                                     loop36:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!(_loc29_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc28_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!(_loc29_ && this))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                    addr750:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 while(!_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop());
                                                                                                                                                                                    loop75:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       _loc21_ = §§pop();
                                                                                                                                                                                       addr695:
                                                                                                                                                                                       loop38:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                          addr700:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(§§pop() <= §§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§=![§);
                                                                                                                                                                                                loop40:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc29_ && param2))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(1);
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         continue loop40;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr620:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop49:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc20_);
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc29_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc26_);
                                                                                                                                                                                                               if(_loc28_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr639:
                                                                                                                                                                                                                  §§push(§§pop() / §§pop());
                                                                                                                                                                                                                  if(!_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§pop().y = §§pop();
                                                                                                                                                                                                                     loop50:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop51:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc15_);
                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 addr558:
                                                                                                                                                                                                                                 if(!(_loc29_ && param2))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(param3);
                                                                                                                                                                                                                                    loop52:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!_loc29_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc29_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(this.§=![§);
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                                                                loop54:
                                                                                                                                                                                                                                                while(!_loc29_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      loop55:
                                                                                                                                                                                                                                                      for(; !_loc29_; while(!(_loc29_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc29_ && param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop75;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc29_ && param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc28_ || param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            if(!(_loc29_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc28_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                  loop63:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!_loc29_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                                                                                                                        addr546:
                                                                                                                                                                                                                                                                        while(!(_loc29_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                                                                           if(_loc29_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(_loc28_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!(_loc29_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    continue loop63;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr805:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                    continue loop0;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop34;
                                                                                                                                                                                                                                                                              addr441:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!_loc29_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(param5);
                                                                                                                                                                                                                                                                              if(_loc29_ && param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop52;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(this.§=![§);
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop63;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop().x);
                                                                                                                                                                                                                                                                                 while(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                    continue loop52;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr768);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr491);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr770);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop51;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr606:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(Number(Math.sqrt(_loc21_)));
                                                                                                                                                                                                                                                                                 addr705:
                                                                                                                                                                                                                                                                                 while(_loc28_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    _loc26_ = §§pop();
                                                                                                                                                                                                                                                                                    loop77:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(this.§=![§);
                                                                                                                                                                                                                                                                                       addr648:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                                                                          addr649:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc26_);
                                                                                                                                                                                                                                                                                             addr650:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                addr651:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                   break loop50;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop77;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop31;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr701:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr546);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr546:
                                                                                                                                                                                                                                                                        addr604:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§goto(addr589);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr490);
                                                                                                                                                                                                                                                                  addr543:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                                                                                                                  continue loop28;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr735:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr543);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr769);
                                                                                                                                                                                                                                                         if(!(_loc28_ || param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop3;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                         if(!(_loc29_ && param3))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§goto(addr377);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr385);
                                                                                                                                                                                                                                                      })
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         loop56:
                                                                                                                                                                                                                                                         while(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(Number(§§pop()));
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               _loc22_ = §§pop();
                                                                                                                                                                                                                                                               break loop70;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc28_ || param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(param3);
                                                                                                                                                                                                                                                                  if(!(_loc29_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(this.§=![§);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                                                                              addr491:
                                                                                                                                                                                                                                                                              while(!(_loc29_ && this))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 continue loop55;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop54;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr490:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc7_.x);
                                                                                                                                                                                                                                                                              addr757:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 addr758:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    break loop36;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr755:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop55;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop56;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr726:
                                                                                                                                                                                                                                                            while(!(_loc29_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                               break loop51;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc7_.y);
                                                                                                                                                                                                                                                               addr768:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  addr769:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     addr770:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        addr771:
                                                                                                                                                                                                                                                                        while(!(_loc29_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           _loc18_ = §§pop();
                                                                                                                                                                                                                                                                           break loop28;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop1;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr726);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop38;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr802);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop36;
                                                                                                                                                                                                                                                addr338:
                                                                                                                                                                                                                                                if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc29_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc29_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop4;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr360);
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr757);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr491);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr428);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr577:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          break;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr719);
                                                                                                                                                                                                                                       addr431:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc29_ && param2)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop52;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                          if(!_loc29_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§goto(addr441);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr456);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr577);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr804:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr805);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr803:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr586);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr735);
                                                                                                                                                                                                                              §§goto(addr558);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr644:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        §§goto(addr401);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop49;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr642:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr651);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr650);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr649);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr639);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr701);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    if(!(_loc28_ || this))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(param5);
                                                                                                                                                                                    if(!(_loc29_ && param1))
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(this.§=![§);
                                                                                                                                                                                                if(!_loc29_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr338);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr425);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr758);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr700);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr431);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr360);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc8_.col1);
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr755);
                                                                                                                                                                                    §§push(§§pop().y);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop2;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr695);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr800);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr694);
                                                                                                                                                                     }
                                                                                                                                                                     while(!_loc29_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc8_.col2);
                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr766);
                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                        }
                                                                                                                                                                        else
                                                                                                                                                                        {
                                                                                                                                                                           §§goto(addr799);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr804);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§goto(addr726);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr705);
                                                                                                                                                   }
                                                                                                                                                   continue loop30;
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§goto(addr725);
                                                                                                                                             §§goto(addr736);
                                                                                                                                          }
                                                                                                                                          addr736:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr642);
                                                                                                                                       }
                                                                                                                                       §§goto(addr644);
                                                                                                                                    }
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§goto(addr546);
                                                                                                                              }
                                                                                                                              while(_loc28_)
                                                                                                                              {
                                                                                                                                 §§goto(addr726);
                                                                                                                                 §§push(_loc16_);
                                                                                                                              }
                                                                                                                              §§goto(addr722);
                                                                                                                           }
                                                                                                                           §§goto(addr771);
                                                                                                                        }
                                                                                                                        §§goto(addr705);
                                                                                                                     }
                                                                                                                     §§goto(addr726);
                                                                                                                  }
                                                                                                               }
                                                                                                               §§goto(addr803);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param4.position);
                                                                                                      if(_loc29_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§goto(addr750);
                                                                                                      §§push(§§pop().y);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr606);
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr215);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc28_ || this)
                                                                                    {
                                                                                       §§goto(addr224);
                                                                                    }
                                                                                    §§goto(addr225);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr224);
                                                                        }
                                                                        §§goto(addr208);
                                                                     }
                                                                     §§goto(addr200);
                                                                  }
                                                                  §§goto(addr192);
                                                               }
                                                               §§goto(addr224);
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                      }
                                                      §§goto(addr224);
                                                   }
                                                   §§goto(addr215);
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr180);
                                          }
                                          §§goto(addr140);
                                       }
                                    }
                                    §§goto(addr175);
                                 case 1:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.§0!?§;
                                    if(_loc28_ || this)
                                    {
                                       §§push(_loc8_.col1);
                                       if(_loc28_)
                                       {
                                          §§push(§§pop().x);
                                          if(!(_loc29_ && this))
                                          {
                                             §§push(_loc7_.x);
                                             if(!_loc29_)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc28_ || this)
                                                {
                                                   §§push(_loc8_.col2);
                                                   if(!_loc29_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc28_ || this)
                                                      {
                                                         addr860:
                                                         §§push(_loc7_.y);
                                                         if(!_loc29_)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(_loc28_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!(_loc29_ && param2))
                                                               {
                                                                  addr875:
                                                                  §§push(Number(§§pop()));
                                                                  if(_loc28_ || param1)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc28_ || param2)
                                                                     {
                                                                        addr893:
                                                                        §§push(_loc8_.col1.y);
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(_loc7_.x);
                                                                           if(!_loc29_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc29_)
                                                                              {
                                                                                 addr903:
                                                                                 §§push(_loc8_.col2.y);
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    addr911:
                                                                                    §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       addr914:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    _loc10_ = §§pop();
                                                                                 }
                                                                                 §§goto(addr911);
                                                                              }
                                                                              §§goto(addr914);
                                                                           }
                                                                           §§goto(addr911);
                                                                        }
                                                                        §§goto(addr914);
                                                                     }
                                                                     _loc8_ = param2.R;
                                                                     _loc7_ = param1.m_localPoint;
                                                                     if(!(_loc29_ && this))
                                                                     {
                                                                        §§push(param2.position);
                                                                        loop79:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop().x);
                                                                           loop80:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc8_.col1);
                                                                              addr1112:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop().x);
                                                                                 if(_loc28_)
                                                                                 {
                                                                                    §§push(_loc7_.x);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       addr1118:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() + §§pop());
                                                                                          addr1119:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_.col2);
                                                                                             addr1121:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr1122:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc7_.y);
                                                                                                   addr1124:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr1091:
                                                                                       if(_loc29_ && param2)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       addr1099:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr1105:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             addr1104:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc12_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(this.§=![§);
                                                                                             loop92:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc9_);
                                                                                                addr988:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§pop().x = §§pop();
                                                                                                   addr989:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      continue loop92;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc28_ || param3)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc11_ = §§pop();
                                                                                                continue loop79;
                                                                                                addr1054:
                                                                                                if(_loc29_ && param2)
                                                                                                {
                                                                                                   continue;
                                                                                                }
                                                                                                if(_loc28_ || param3)
                                                                                                {
                                                                                                   if(!(_loc28_ || param3))
                                                                                                   {
                                                                                                      continue loop80;
                                                                                                   }
                                                                                                   §§push(_loc8_.col2);
                                                                                                   if(_loc28_ || param3)
                                                                                                   {
                                                                                                      §§push(§§pop().y);
                                                                                                      if(!_loc29_)
                                                                                                      {
                                                                                                         addr1087:
                                                                                                         §§push(_loc7_.y);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            §§goto(addr1091);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr1124);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr1099);
                                                                                                   }
                                                                                                   else
                                                                                                   {
                                                                                                      §§goto(addr1121);
                                                                                                   }
                                                                                                }
                                                                                                else
                                                                                                {
                                                                                                   §§goto(addr1119);
                                                                                                }
                                                                                                §§goto(addr1121);
                                                                                             }
                                                                                          }
                                                                                          addr1125:
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1125);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr958);
                                                                  }
                                                                  §§goto(addr903);
                                                               }
                                                               §§goto(addr914);
                                                            }
                                                         }
                                                      }
                                                      §§goto(addr911);
                                                   }
                                                }
                                                §§goto(addr903);
                                             }
                                             §§goto(addr860);
                                          }
                                          §§goto(addr875);
                                       }
                                    }
                                    §§goto(addr893);
                                 case 2:
                                    §§goto(addr1381);
                              }
                              param4.R;
                              return;
                              addr2008:
                           }
                           else
                           {
                              addr1970:
                              §§push(1);
                              if(!(_loc29_ && param2))
                              {
                                 §§goto(addr1988);
                              }
                              else
                              {
                                 addr1993:
                                 if(§§pop() === _loc27_)
                                 {
                                    addr1995:
                                    §§push(2);
                                    if(_loc28_ || param1)
                                    {
                                       addr2003:
                                    }
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                              }
                              §§goto(addr2008);
                           }
                        }
                        else
                        {
                           §§push(b2Manifold.§@!`§);
                           if(_loc28_ || param2)
                           {
                              §§push(_loc27_);
                              if(!_loc29_)
                              {
                                 addr1962:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc28_ || param1)
                                    {
                                       §§goto(addr1970);
                                    }
                                    §§goto(addr1995);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§6$§);
                                    if(_loc28_)
                                    {
                                       §§goto(addr1993);
                                    }
                                 }
                                 §§goto(addr2003);
                              }
                              §§goto(addr1993);
                           }
                        }
                        §§goto(addr1988);
                     }
                     §§goto(addr1962);
                  }
                  §§goto(addr1988);
               }
            }
            §§goto(addr1941);
         }
         addr73:
      }
   }
}
