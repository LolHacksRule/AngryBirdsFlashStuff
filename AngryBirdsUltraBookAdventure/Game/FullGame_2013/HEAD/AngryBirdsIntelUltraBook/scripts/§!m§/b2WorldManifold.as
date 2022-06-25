package §!m§
{
   import §+!g§.*;
   import §>!8§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §+i§:b2Vec2;
      
      public var §&!2§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         if(_loc3_ || this)
         {
            this.§+i§ = new b2Vec2();
            loop0:
            while(true)
            {
               addr46:
               while(true)
               {
                  super();
                  continue loop0;
               }
            }
         }
         while(true)
         {
            this.§&!2§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
            if(_loc3_ || _loc1_)
            {
               if(true)
               {
                  break;
               }
               §§goto(addr46);
            }
            §§goto(addr49);
         }
         §§push(0);
         if(_loc3_ || _loc3_)
         {
            §§push(int(§§pop()));
         }
         var _loc1_:* = §§pop();
         while(true)
         {
            §§push(_loc1_);
            if(!_loc2_)
            {
               if(§§pop() >= b2Settings.b2_maxManifoldPoints)
               {
                  if(_loc2_ && this)
                  {
                     continue;
                  }
                  if(_loc3_)
                  {
                     break;
                  }
               }
               else
               {
                  this.§&!2§[_loc1_] = new b2Vec2();
               }
               §§push(_loc1_);
               if(!_loc2_)
               {
                  §§push(§§pop() + 1);
                  if(_loc3_ || this)
                  {
                     §§push(int(§§pop()));
                  }
               }
            }
            _loc1_ = §§pop();
         }
      }
      
      public function §2@§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
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
         if(!_loc29_)
         {
            if(param1.§5<§ == 0)
            {
               if(_loc28_)
               {
                  return;
               }
            }
         }
         §§push(param1.§2!5§);
         if(_loc28_)
         {
            var _loc27_:* = §§pop();
            if(_loc28_)
            {
               §§push(b2Manifold.§@!"§);
               if(!(_loc29_ && this))
               {
                  §§push(_loc27_);
                  if(!_loc29_)
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!_loc29_)
                        {
                           §§push(0);
                           if(_loc28_ || this)
                           {
                           }
                        }
                        else
                        {
                           addr2026:
                           §§push(3);
                           if(!(_loc29_ && param3))
                           {
                              addr2034:
                           }
                        }
                     }
                     else
                     {
                        §§push(b2Manifold.§<!!§);
                        if(_loc28_)
                        {
                           §§push(_loc27_);
                           if(!(_loc29_ && param2))
                           {
                              addr1989:
                              if(§§pop() === §§pop())
                              {
                                 if(_loc28_ || param2)
                                 {
                                    §§push(1);
                                    if(!_loc29_)
                                    {
                                       addr2036:
                                       loop132:
                                       switch(§§pop())
                                       {
                                          case 0:
                                             _loc8_ = param2.R;
                                             _loc7_ = param1.m_localPoint;
                                             if(_loc28_)
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
                                                            if(!(_loc29_ && param2))
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(_loc28_ || param1)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  if(_loc28_ || this)
                                                                  {
                                                                     §§push(_loc8_.col2);
                                                                     if(!_loc29_)
                                                                     {
                                                                        §§push(§§pop().x);
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(_loc7_.y);
                                                                           if(!(_loc29_ && this))
                                                                           {
                                                                              addr136:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(!_loc29_)
                                                                              {
                                                                                 addr139:
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    addr142:
                                                                                    §§push(Number(§§pop()));
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       _loc15_ = §§pop();
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr150:
                                                                                          §§push(param2.position.y);
                                                                                          if(_loc28_ || this)
                                                                                          {
                                                                                             addr160:
                                                                                             §§push(_loc8_.col1.y);
                                                                                             if(!_loc29_)
                                                                                             {
                                                                                                addr163:
                                                                                                §§push(_loc7_.x);
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   §§push(§§pop() * §§pop());
                                                                                                   if(_loc28_ || param3)
                                                                                                   {
                                                                                                      addr195:
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         addr180:
                                                                                                         §§push(_loc8_.col2.y);
                                                                                                         if(_loc28_ || param2)
                                                                                                         {
                                                                                                            addr188:
                                                                                                            §§push(§§pop() * _loc7_.y);
                                                                                                         }
                                                                                                      }
                                                                                                      _loc16_ = §§pop();
                                                                                                      _loc8_ = param4.R;
                                                                                                      _loc7_ = param1.§&!2§[0].m_localPoint;
                                                                                                      if(!(_loc29_ && this))
                                                                                                      {
                                                                                                         §§push(param4.position);
                                                                                                         loop0:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               §§push(_loc8_.col1);
                                                                                                               loop1:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop().x);
                                                                                                                  addr768:
                                                                                                                  addr706:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc7_.x);
                                                                                                                     addr770:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr771:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr772:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc8_.col2);
                                                                                                                              addr774:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop().x);
                                                                                                                                 addr775:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_.y);
                                                                                                                                    addr777:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       addr778:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr779:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  loop13:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_.col1);
                                                                                                                     if(_loc29_ && this)
                                                                                                                     {
                                                                                                                        continue loop1;
                                                                                                                     }
                                                                                                                     §§push(§§pop().y);
                                                                                                                     loop14:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc7_.x);
                                                                                                                        loop15:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           loop16:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              loop17:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc8_.col2);
                                                                                                                                 if(!(_loc29_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    loop18:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc28_ || this)
                                                                                                                                       {
                                                                                                                                          §§push(_loc7_.y);
                                                                                                                                          loop19:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             if(!_loc29_)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                loop20:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   if(_loc28_ || param2)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      loop21:
                                                                                                                                                      for(; _loc28_ || param3; loop27:
                                                                                                                                                      while(_loc28_ || param2)
                                                                                                                                                      {
                                                                                                                                                         _loc19_ = §§pop();
                                                                                                                                                         loop28:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                            loop29:
                                                                                                                                                            while(_loc28_)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                               loop30:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc29_)
                                                                                                                                                                     {
                                                                                                                                                                        break;
                                                                                                                                                                     }
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     loop31:
                                                                                                                                                                     for(; _loc28_; if(_loc29_ && param3)
                                                                                                                                                                     {
                                                                                                                                                                        continue;
                                                                                                                                                                     },§§push(param5),if(!(_loc29_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr280);
                                                                                                                                                                     },§§goto(addr311))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        loop32:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc20_ = §§pop();
                                                                                                                                                                           loop33:
                                                                                                                                                                           while(!_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                              while(_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc28_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                       while(!_loc29_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                             addr644:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                continue loop19;
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                       addr640:
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr758);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr685);
                                                                                                                                                                                 loop43:
                                                                                                                                                                                 for(; _loc28_ || param1; while(!(_loc29_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr470);
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    §§goto(addr415);
                                                                                                                                                                                 })
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                                                    loop44:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() <= §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(this.§+i§);
                                                                                                                                                                                          loop45:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(1);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§pop().x = §§pop();
                                                                                                                                                                                                   addr546:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!(_loc29_ && param3))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop45;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr619:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(Number(Math.sqrt(_loc21_)));
                                                                                                                                                                                                         addr624:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            _loc26_ = §§pop();
                                                                                                                                                                                                            addr625:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(this.§+i§);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr527:
                                                                                                                                                                                                   continue loop45;
                                                                                                                                                                                                   if(!(_loc28_ || param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop49:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc28_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param3);
                                                                                                                                                                                                               loop50:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(this.§+i§);
                                                                                                                                                                                                                  loop51:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop().x);
                                                                                                                                                                                                                     loop52:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        loop53:
                                                                                                                                                                                                                        while(_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc29_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                                                                              if(!_loc29_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr506:
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    loop54:
                                                                                                                                                                                                                                    while(!_loc29_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc22_ = §§pop();
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          addr436:
                                                                                                                                                                                                                                          loop56:
                                                                                                                                                                                                                                          while(_loc28_ || this)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc29_ && param1))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(param3);
                                                                                                                                                                                                                                                loop57:
                                                                                                                                                                                                                                                for(; !_loc29_; if(_loc29_ && param2)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                },if(!_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop53;
                                                                                                                                                                                                                                                },if(_loc29_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   continue loop50;
                                                                                                                                                                                                                                                },if(_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr334);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr342);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                else
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§goto(addr684);
                                                                                                                                                                                                                                                })
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(this.§+i§);
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop().y);
                                                                                                                                                                                                                                                      addr456:
                                                                                                                                                                                                                                                      while(_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         while(!_loc29_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            continue loop43;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr640);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                                                                      loop74:
                                                                                                                                                                                                                                                      while(_loc28_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().x);
                                                                                                                                                                                                                                                         loop75:
                                                                                                                                                                                                                                                         while(_loc28_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc28_ || param2)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               while(!_loc29_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                     if(_loc28_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr415:
                                                                                                                                                                                                                                                                        if(_loc29_ && this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop43;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop56;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     loop77:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        _loc24_ = §§pop();
                                                                                                                                                                                                                                                                        addr426:
                                                                                                                                                                                                                                                                        while(_loc28_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop77;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop31;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr470:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc28_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc29_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                       while(_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc17_);
                                                                                                                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop77;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop17;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(param5);
                                                                                                                                                                                                                                                                                             while(!(_loc29_ && param2))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(this.§+i§);
                                                                                                                                                                                                                                                                                                   continue loop74;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop30;
                                                                                                                                                                                                                                                                                                if(_loc28_ || param1)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop57;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc29_ && param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                   break loop56;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                                §§goto(addr374);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr374:
                                                                                                                                                                                                                                                                                             §§goto(addr775);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop33;
                                                                                                                                                                                                                                                                                       addr477:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    continue loop27;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop32;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr624);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr625);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr577:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop49;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr644);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(_loc29_ && param2)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(this.§+i§);
                                                                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop74;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop51;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop75;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!(_loc28_ || param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop52;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!(_loc28_ || param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop19;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr311);
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr459);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            break loop49;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr456);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop18;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr779);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                                                                                                                             break loop54;
                                                                                                                                                                                                                                             §§goto(addr436);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       _loc21_ = §§pop();
                                                                                                                                                                                                                                       addr663:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop43;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr506:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr643);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr506);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           else
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr778);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        continue loop44;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            else
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr772);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr506);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr777);
                                                                                                                                                                                                      if(!(_loc28_ || param2))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         loop80:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            this.§&!2§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     this.§&!2§[0].y = 0.5 * (_loc23_ + _loc25_);
                                                                                                                                                                                                                     if(!_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc29_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop80;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop28;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        loop82:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc28_ || param3)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr599:
                                                                                                                                                                                                                              if(!_loc29_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(this.§+i§);
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                                                                    if(_loc28_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc26_);
                                                                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                             addr591:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().x = §§pop();
                                                                                                                                                                                                                                                continue loop82;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr589:
                                                                                                                                                                                                                                             §§goto(addr599);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr591);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc28_ || param3)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       §§goto(addr577);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr601);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 addr601:
                                                                                                                                                                                                                                 addr557:
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop0;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr625);
                                                                                                                                                                                                                           §§goto(addr591);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr509);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr350);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr663);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr426);
                                                                                                                                                                                                         addr243:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr546);
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc19_);
                                                                                                                                                                                                if(!(_loc29_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr589);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr591);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr619);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              continue loop29;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr759);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     continue loop13;
                                                                                                                                                                  }
                                                                                                                                                                  continue loop20;
                                                                                                                                                               }
                                                                                                                                                               continue loop16;
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr683);
                                                                                                                                                         }
                                                                                                                                                      })
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            _loc18_ = §§pop();
                                                                                                                                                            addr759:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc17_);
                                                                                                                                                               addr683:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  addr684:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                     addr685:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                        continue loop21;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         _loc17_ = §§pop();
                                                                                                                                                         continue loop0;
                                                                                                                                                      }
                                                                                                                                                      addr780:
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr770);
                                                                                                                                             }
                                                                                                                                             §§goto(addr771);
                                                                                                                                             while(_loc28_ || param1)
                                                                                                                                             {
                                                                                                                                                §§goto(addr653);
                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§goto(addr768);
                                                                                                                                       }
                                                                                                                                       §§goto(addr770);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr774);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr780);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr479);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr188);
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       §§goto(addr195);
                                                                                    }
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr195);
                                                                              }
                                                                              §§goto(addr163);
                                                                           }
                                                                           §§goto(addr188);
                                                                        }
                                                                        §§goto(addr139);
                                                                     }
                                                                     §§goto(addr180);
                                                                  }
                                                                  §§goto(addr142);
                                                               }
                                                               §§goto(addr163);
                                                            }
                                                            §§goto(addr136);
                                                         }
                                                         §§goto(addr188);
                                                      }
                                                      §§goto(addr160);
                                                   }
                                                   §§goto(addr142);
                                                }
                                                §§goto(addr150);
                                             }
                                             §§goto(addr195);
                                          case 1:
                                             _loc8_ = param2.R;
                                             _loc7_ = param1.§-O§;
                                             if(_loc28_)
                                             {
                                                §§push(_loc8_.col1);
                                                if(_loc28_ || param1)
                                                {
                                                   §§push(§§pop().x);
                                                   if(!(_loc29_ && this))
                                                   {
                                                      §§push(_loc7_.x);
                                                      if(!(_loc29_ && param2))
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc28_)
                                                         {
                                                            §§push(_loc8_.col2);
                                                            if(_loc28_ || this)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(!(_loc29_ && this))
                                                               {
                                                                  §§push(_loc7_.y);
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(!_loc29_)
                                                                     {
                                                                        addr847:
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc28_)
                                                                           {
                                                                              addr853:
                                                                              _loc9_ = §§pop();
                                                                              if(_loc28_)
                                                                              {
                                                                                 addr858:
                                                                                 §§push(_loc8_.col1.y);
                                                                                 if(!_loc29_)
                                                                                 {
                                                                                    addr861:
                                                                                    §§push(_loc7_.x);
                                                                                    if(!(_loc29_ && param2))
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!(_loc29_ && this))
                                                                                       {
                                                                                          addr880:
                                                                                          §§push(_loc8_.col2.y);
                                                                                          if(!(_loc29_ && param2))
                                                                                          {
                                                                                             addr891:
                                                                                             addr888:
                                                                                             addr890:
                                                                                             §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                             if(_loc29_ && this)
                                                                                             {
                                                                                             }
                                                                                             addr900:
                                                                                             _loc10_ = §§pop();
                                                                                             _loc8_ = param2.R;
                                                                                             _loc7_ = param1.m_localPoint;
                                                                                             if(_loc28_ || param1)
                                                                                             {
                                                                                                §§push(param2.position);
                                                                                                loop83:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   addr1092:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc8_.col1);
                                                                                                      addr1094:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(§§pop().x);
                                                                                                         if(!_loc29_)
                                                                                                         {
                                                                                                            §§push(_loc7_.x);
                                                                                                            if(_loc28_ || param3)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  if(!(_loc29_ && param3))
                                                                                                                  {
                                                                                                                     §§push(_loc8_.col2);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr1120:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc7_.y);
                                                                                                                           addr1122:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              addr1123:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr1119:
                                                                                                                  }
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     addr1125:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc11_ = §§pop();
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           break loop132;
                                                                                                                        }
                                                                                                                        addr1382:
                                                                                                                        continue loop83;
                                                                                                                     }
                                                                                                                     §§goto(addr1120);
                                                                                                                  }
                                                                                                                  addr1124:
                                                                                                               }
                                                                                                               §§goto(addr1120);
                                                                                                            }
                                                                                                            §§goto(addr1122);
                                                                                                         }
                                                                                                         §§goto(addr1120);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             §§goto(addr985);
                                                                                          }
                                                                                          §§goto(addr891);
                                                                                       }
                                                                                       §§goto(addr900);
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    §§goto(addr888);
                                                                                 }
                                                                              }
                                                                           }
                                                                           §§goto(addr891);
                                                                        }
                                                                        §§goto(addr861);
                                                                     }
                                                                     §§goto(addr891);
                                                                  }
                                                                  §§goto(addr890);
                                                               }
                                                               §§goto(addr847);
                                                            }
                                                            §§goto(addr880);
                                                         }
                                                         §§goto(addr853);
                                                      }
                                                      §§goto(addr891);
                                                   }
                                                   §§goto(addr880);
                                                }
                                             }
                                             §§goto(addr858);
                                          case 2:
                                             §§goto(addr1386);
                                       }
                                       param4.R;
                                       return;
                                       addr2036:
                                    }
                                    §§goto(addr2036);
                                 }
                                 else
                                 {
                                    addr2020:
                                    §§push(2);
                                    if(!_loc29_)
                                    {
                                       addr2023:
                                       §§goto(addr2036);
                                    }
                                    else
                                    {
                                       §§goto(addr2034);
                                    }
                                 }
                              }
                              else
                              {
                                 §§push(b2Manifold.§&!>§);
                                 if(!_loc29_)
                                 {
                                    §§push(_loc27_);
                                 }
                              }
                              §§goto(addr2036);
                           }
                           if(§§pop() === §§pop())
                           {
                              if(_loc28_)
                              {
                                 §§goto(addr2020);
                              }
                              else
                              {
                                 §§goto(addr2026);
                              }
                           }
                           else if(false)
                           {
                              §§goto(addr2026);
                           }
                           else
                           {
                              §§push(3);
                           }
                           §§goto(addr2026);
                        }
                        §§goto(addr2023);
                     }
                     §§goto(addr2036);
                  }
                  §§goto(addr1989);
               }
               §§goto(addr2023);
            }
            §§goto(addr2026);
         }
         §§goto(addr2036);
      }
   }
}
