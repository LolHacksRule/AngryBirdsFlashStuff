package §5!o§
{
   import §2"=§.*;
   import §=o§.*;
   
   use namespace b2internal;
   
   public class b2WorldManifold
   {
       
      
      public var §]!?§:b2Vec2;
      
      public var §5!'§:Vector.<b2Vec2>;
      
      public function b2WorldManifold()
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         if(!(_loc3_ && _loc1_))
         {
            this.§]!?§ = new b2Vec2();
         }
         while(true)
         {
            while(true)
            {
               super();
               do
               {
                  this.§5!'§ = new Vector.<b2Vec2>(b2Settings.b2_maxManifoldPoints);
               }
               while(_loc3_);
               
               if(_loc2_)
               {
                  if(true)
                  {
                     var _loc1_:int = 0;
                     while(true)
                     {
                        if(_loc1_ >= b2Settings.b2_maxManifoldPoints)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           if(!(_loc3_ && _loc3_))
                           {
                              break;
                           }
                        }
                        else
                        {
                           this.§5!'§[_loc1_] = new b2Vec2();
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
      
      public function §1o§(param1:b2Manifold, param2:b2Transform, param3:Number, param4:b2Transform, param5:Number) : void
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
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(_loc28_)
         {
            if(param1.§<!c§ == 0)
            {
               if(!_loc29_)
               {
                  §§goto(addr68);
               }
            }
            §§push(param1.§="1§);
            if(_loc28_ || param2)
            {
               var _loc27_:* = §§pop();
               if(_loc28_ || this)
               {
                  §§push(b2Manifold.§>§);
                  if(!_loc29_)
                  {
                     §§push(_loc27_);
                     if(!(_loc29_ && param1))
                     {
                        if(§§pop() === §§pop())
                        {
                           if(_loc28_)
                           {
                              §§push(0);
                              if(!(_loc28_ || param3))
                              {
                                 addr2073:
                              }
                              addr2104:
                              loop134:
                              switch(§§pop())
                              {
                                 case 0:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.m_localPoint;
                                    if(_loc28_ || this)
                                    {
                                       §§push(param2.position);
                                       if(_loc28_ || this)
                                       {
                                          §§push(§§pop().x);
                                          if(!_loc29_)
                                          {
                                             §§push(_loc8_.col1);
                                             if(!_loc29_)
                                             {
                                                §§push(§§pop().x);
                                                if(_loc28_ || param1)
                                                {
                                                   §§push(_loc7_.x);
                                                   if(!(_loc29_ && param2))
                                                   {
                                                      §§push(§§pop() * §§pop());
                                                      if(!(_loc29_ && this))
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         if(_loc28_ || param3)
                                                         {
                                                            §§push(_loc8_.col2);
                                                            if(!(_loc29_ && param2))
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc28_)
                                                               {
                                                                  addr147:
                                                                  §§push(_loc7_.y);
                                                                  if(!_loc29_)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     if(_loc28_)
                                                                     {
                                                                        §§push(§§pop() + §§pop());
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           if(_loc28_ || param3)
                                                                           {
                                                                              _loc15_ = §§pop();
                                                                              if(!_loc29_)
                                                                              {
                                                                                 addr170:
                                                                                 §§push(param2.position.y);
                                                                                 if(_loc28_ || param1)
                                                                                 {
                                                                                    addr178:
                                                                                    §§push(_loc8_.col1.y);
                                                                                    if(_loc28_ || param1)
                                                                                    {
                                                                                       §§push(_loc7_.x);
                                                                                       if(_loc28_ || param1)
                                                                                       {
                                                                                          addr197:
                                                                                          §§push(§§pop() * §§pop());
                                                                                          if(_loc28_ || param1)
                                                                                          {
                                                                                          }
                                                                                          addr221:
                                                                                          addr230:
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc28_ || this)
                                                                                          {
                                                                                             addr229:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          _loc16_ = §§pop();
                                                                                          _loc8_ = param4.R;
                                                                                          _loc7_ = param1.§5!'§[0].m_localPoint;
                                                                                          if(_loc28_ || this)
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
                                                                                                      if(_loc28_ || param1)
                                                                                                      {
                                                                                                         §§push(_loc7_.x);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr470:
                                                                                                            if(!(_loc28_ || param2))
                                                                                                            {
                                                                                                               continue;
                                                                                                            }
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            loop56:
                                                                                                            while(_loc28_)
                                                                                                            {
                                                                                                               if(!_loc29_)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  loop57:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     if(_loc28_ || this)
                                                                                                                     {
                                                                                                                        if(_loc28_)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           loop58:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              if(_loc28_ || param2)
                                                                                                                              {
                                                                                                                                 if(!(_loc29_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!_loc29_)
                                                                                                                                    {
                                                                                                                                       _loc23_ = §§pop();
                                                                                                                                       loop59:
                                                                                                                                       while(!_loc29_)
                                                                                                                                       {
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc17_);
                                                                                                                                             loop71:
                                                                                                                                             for(; _loc28_; if(!(_loc29_ && param2))
                                                                                                                                             {
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   _loc25_ = §§pop();
                                                                                                                                                   §§goto(addr388);
                                                                                                                                                }
                                                                                                                                                break loop58;
                                                                                                                                             })
                                                                                                                                             {
                                                                                                                                                if(!_loc29_)
                                                                                                                                                {
                                                                                                                                                   if(!_loc29_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc29_ && this))
                                                                                                                                                      {
                                                                                                                                                         §§push(param5);
                                                                                                                                                         loop72:
                                                                                                                                                         for(; _loc28_; if(_loc29_ && this)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         },§§goto(addr358))
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc29_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(this.§]!?§);
                                                                                                                                                               loop73:
                                                                                                                                                               for(; !(_loc29_ && param1); §§push(this.§]!?§),if(!(_loc28_ || param1))
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               },§§goto(addr332))
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop().x);
                                                                                                                                                                  loop74:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     loop75:
                                                                                                                                                                     while(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        loop76:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           loop77:
                                                                                                                                                                           while(!_loc29_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc24_ = §§pop();
                                                                                                                                                                              loop78:
                                                                                                                                                                              for(; !_loc29_; while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc28_ || param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop78;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    break;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(!_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr270);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr768);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(_loc28_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc16_);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr451);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr624);
                                                                                                                                                                              },continue loop59)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                 if(!(_loc28_ || param1))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop71;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop77;
                                                                                                                                                                                 }
                                                                                                                                                                                 if(_loc29_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop76;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§push(param5);
                                                                                                                                                                                 if(_loc28_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc29_ && param2))
                                                                                                                                                                                    {
                                                                                                                                                                                       addr316:
                                                                                                                                                                                       if(!(_loc29_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue loop73;
                                                                                                                                                                                       }
                                                                                                                                                                                       loop32:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc20_);
                                                                                                                                                                                          addr669:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                             if(_loc28_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                   break loop58;
                                                                                                                                                                                                }
                                                                                                                                                                                                addr678:
                                                                                                                                                                                             }
                                                                                                                                                                                             addr693:
                                                                                                                                                                                             loop38:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc28_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop() <= §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(this.§]!?§);
                                                                                                                                                                                                      loop39:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(1);
                                                                                                                                                                                                         addr597:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§pop().x = §§pop();
                                                                                                                                                                                                            continue loop39;
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(Math.sqrt(_loc21_)));
                                                                                                                                                                                                      addr705:
                                                                                                                                                                                                      loop68:
                                                                                                                                                                                                      while(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc26_ = §§pop();
                                                                                                                                                                                                         while(!_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr628);
                                                                                                                                                                                                            §§push(this.§]!?§);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc17_);
                                                                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                                                                               while(!(_loc29_ && param2))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                  addr822:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc8_.col2);
                                                                                                                                                                                                                     addr824:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(§§pop().x);
                                                                                                                                                                                                                        addr825:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc7_.y);
                                                                                                                                                                                                                           addr827:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              addr828:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                 addr829:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    addr830:
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
                                                                                                                                                                                                               addr756:
                                                                                                                                                                                                               addr821:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            loop23:
                                                                                                                                                                                                            for(; !_loc29_; if(!(_loc28_ || param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue;
                                                                                                                                                                                                            },if(_loc28_ || this)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc29_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc19_);
                                                                                                                                                                                                                  break loop75;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc8_.col1);
                                                                                                                                                                                                                  if(_loc29_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop1;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(§§pop().y);
                                                                                                                                                                                                                  if(_loc28_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr790);
                                                                                                                                                                                                                        addr463:
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                        if(_loc29_ && param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr470);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr796);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr775:
                                                                                                                                                                                                            },§§goto(addr791))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc19_ = §§pop();
                                                                                                                                                                                                                  addr768:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                     if(!(_loc29_ && param3))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr721:
                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                        while(!(_loc29_ && param1))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                           continue loop38;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                           addr791:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc8_.col2);
                                                                                                                                                                                                                              if(_loc29_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(§§pop().y);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc7_.y);
                                                                                                                                                                                                                                 addr798:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    addr799:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       addr800:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          break loop68;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr824);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr790:
                                                                                                                                                                                                                        addr721:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc28_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                           while(_loc28_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc20_ = §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                                                                 if(!(_loc29_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop68;
                                                                                                                                                                                                                                 addr285:
                                                                                                                                                                                                                                 if(!(_loc28_ || param1))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 this.§5!'§[0].y = 0.5 * (_loc23_ + _loc25_);
                                                                                                                                                                                                                                 if(_loc28_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr268:
                                                                                                                                                                                                                                    if(false)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          this.§5!'§[0].x = 0.5 * (_loc22_ + _loc24_);
                                                                                                                                                                                                                                          addr281:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop78;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(_loc29_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr285);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr708);
                                                                                                                                                                                                                                          §§goto(addr268);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr270:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    break loop134;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr281);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop23;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr829);
                                                                                                                                                                                                                           addr737:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr830);
                                                                                                                                                                                                                        addr660:
                                                                                                                                                                                                                        while(!(_loc29_ && param2))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc20_);
                                                                                                                                                                                                                           continue loop32;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr822);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr708:
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc18_ = §§pop();
                                                                                                                                                                                                         §§goto(addr802);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr701:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr721);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    while(!_loc29_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(this.§]!?§);
                                                                                                                                                                                       break loop73;
                                                                                                                                                                                    }
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(this.§]!?§);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop().x);
                                                                                                                                                                                                addr523:
                                                                                                                                                                                                while(_loc28_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         break loop57;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      break;
                                                                                                                                                                                                      addr358:
                                                                                                                                                                                                      if(_loc29_ && param3)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() - §§pop());
                                                                                                                                                                                                         if(!_loc29_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop57;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop71;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr693);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr825);
                                                                                                                                                                                                }
                                                                                                                                                                                                addr332:
                                                                                                                                                                                                §§goto(addr669);
                                                                                                                                                                                                if(_loc29_ && param1)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue;
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   continue loop74;
                                                                                                                                                                                                }
                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc29_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc29_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr349:
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         if(_loc28_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop72;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop75;
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr798);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr827);
                                                                                                                                                                                                }
                                                                                                                                                                                                else
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(_loc28_ || param1)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr463);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr523);
                                                                                                                                                                                                   addr456:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr721);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr796);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr828);
                                                                                                                                                                                    addr451:
                                                                                                                                                                                    addr516:
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    §§goto(addr349);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§goto(addr602);
                                                                                                                                                                                 §§goto(addr631);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr516);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr660);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr456);
                                                                                                                                                                  §§goto(addr429);
                                                                                                                                                               }
                                                                                                                                                               addr429:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr799);
                                                                                                                                                         }
                                                                                                                                                         continue loop56;
                                                                                                                                                      }
                                                                                                                                                      while(!(_loc29_ && param2))
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr693);
                                                                                                                                                         §§push(Number.MIN_VALUE * Number.MIN_VALUE);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr800);
                                                                                                                                                      addr681:
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr705);
                                                                                                                                                }
                                                                                                                                                §§goto(addr450);
                                                                                                                                             }
                                                                                                                                             continue loop58;
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(_loc28_ || param2)
                                                                                                                                          {
                                                                                                                                             if(!(_loc29_ && param3))
                                                                                                                                             {
                                                                                                                                                if(_loc29_)
                                                                                                                                                {
                                                                                                                                                   break;
                                                                                                                                                }
                                                                                                                                                §§goto(addr513);
                                                                                                                                             }
                                                                                                                                             §§goto(addr701);
                                                                                                                                          }
                                                                                                                                          §§goto(addr598);
                                                                                                                                       }
                                                                                                                                       continue loop0;
                                                                                                                                    }
                                                                                                                                    §§goto(addr767);
                                                                                                                                 }
                                                                                                                                 §§goto(addr660);
                                                                                                                              }
                                                                                                                              §§goto(addr678);
                                                                                                                           }
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop());
                                                                                                                              break loop56;
                                                                                                                           }
                                                                                                                        }
                                                                                                                        break;
                                                                                                                     }
                                                                                                                     addr542:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc22_ = §§pop();
                                                                                                                        §§goto(addr543);
                                                                                                                        continue loop57;
                                                                                                                     }
                                                                                                                  }
                                                                                                                  while(!(_loc29_ && param2))
                                                                                                                  {
                                                                                                                     §§goto(addr542);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                                  §§goto(addr737);
                                                                                                               }
                                                                                                               §§goto(addr756);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc21_ = §§pop();
                                                                                                               §§goto(addr681);
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr821);
                                                                                                   }
                                                                                                }
                                                                                                §§goto(addr830);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr512);
                                                                                       }
                                                                                       addr220:
                                                                                       §§goto(addr221);
                                                                                       §§push(§§pop() * §§pop());
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc29_)
                                                                                    {
                                                                                       addr208:
                                                                                       §§push(_loc8_.col2.y);
                                                                                       if(!(_loc29_ && this))
                                                                                       {
                                                                                          addr218:
                                                                                          §§goto(addr220);
                                                                                          §§push(_loc7_.y);
                                                                                       }
                                                                                       §§goto(addr221);
                                                                                    }
                                                                                    §§goto(addr230);
                                                                                 }
                                                                                 §§goto(addr208);
                                                                              }
                                                                              §§goto(addr221);
                                                                           }
                                                                        }
                                                                        §§goto(addr178);
                                                                     }
                                                                     §§goto(addr218);
                                                                  }
                                                                  §§goto(addr197);
                                                               }
                                                               §§goto(addr218);
                                                            }
                                                            §§goto(addr208);
                                                         }
                                                         §§goto(addr229);
                                                      }
                                                      §§goto(addr197);
                                                   }
                                                   §§goto(addr220);
                                                }
                                                §§goto(addr147);
                                             }
                                             §§goto(addr178);
                                          }
                                          §§goto(addr208);
                                       }
                                    }
                                    §§goto(addr170);
                                 case 1:
                                    _loc8_ = param2.R;
                                    _loc7_ = param1.§,"'§;
                                    if(!(_loc29_ && param1))
                                    {
                                       §§push(_loc8_.col1);
                                       if(_loc28_)
                                       {
                                          §§push(§§pop().x);
                                          if(_loc28_ || param1)
                                          {
                                             §§push(_loc7_.x);
                                             if(!(_loc29_ && param2))
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc28_)
                                                {
                                                   addr873:
                                                   §§push(_loc8_.col2);
                                                   if(!(_loc29_ && this))
                                                   {
                                                      §§push(§§pop().x);
                                                      if(!(_loc29_ && param3))
                                                      {
                                                         §§push(_loc7_.y);
                                                         if(_loc28_ || param2)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            if(!(_loc29_ && param2))
                                                            {
                                                               addr907:
                                                               §§push(§§pop() + §§pop());
                                                               if(_loc28_ || param1)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc29_)
                                                                  {
                                                                     addr918:
                                                                     _loc9_ = §§pop();
                                                                     if(!(_loc29_ && param2))
                                                                     {
                                                                        addr928:
                                                                        §§push(_loc8_.col1.y);
                                                                        if(!_loc29_)
                                                                        {
                                                                           §§push(_loc7_.x);
                                                                           if(_loc28_ || this)
                                                                           {
                                                                              addr940:
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc28_ || this)
                                                                              {
                                                                                 addr948:
                                                                                 §§push(_loc8_.col2.y);
                                                                                 if(_loc28_ || this)
                                                                                 {
                                                                                    addr961:
                                                                                    §§push(§§pop() + §§pop() * _loc7_.y);
                                                                                    if(!(_loc29_ && param3))
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr961);
                                                                              }
                                                                              _loc10_ = §§pop();
                                                                              addr971:
                                                                              _loc8_ = param2.R;
                                                                              _loc7_ = param1.m_localPoint;
                                                                              if(!(_loc29_ && param3))
                                                                              {
                                                                                 §§push(param2.position);
                                                                                 loop82:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop().x);
                                                                                    if(_loc28_ || param3)
                                                                                    {
                                                                                       §§push(_loc8_.col1);
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop().x);
                                                                                          addr1173:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc7_.x);
                                                                                             addr1175:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop() * §§pop());
                                                                                                if(!_loc29_)
                                                                                                {
                                                                                                   §§push(§§pop() + §§pop());
                                                                                                   if(!_loc29_)
                                                                                                   {
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         addr1183:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr1184:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc7_.y);
                                                                                                               addr1186:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr1187:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr1181:
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      addr1189:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc11_ = §§pop();
                                                                                                         continue loop82;
                                                                                                      }
                                                                                                   }
                                                                                                   addr1188:
                                                                                                }
                                                                                                §§goto(addr1187);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                       addr1172:
                                                                                    }
                                                                                    §§goto(addr1181);
                                                                                 }
                                                                              }
                                                                              §§goto(addr1036);
                                                                           }
                                                                           §§goto(addr961);
                                                                        }
                                                                     }
                                                                     §§goto(addr971);
                                                                  }
                                                                  §§goto(addr948);
                                                               }
                                                               §§goto(addr918);
                                                            }
                                                         }
                                                         §§goto(addr961);
                                                      }
                                                      §§goto(addr940);
                                                   }
                                                   §§goto(addr948);
                                                }
                                                §§goto(addr918);
                                             }
                                             §§goto(addr907);
                                          }
                                          §§goto(addr873);
                                       }
                                       §§goto(addr928);
                                    }
                                    §§goto(addr940);
                                 case 2:
                                    §§goto(addr1441);
                              }
                              param4.R;
                              return;
                              addr2103:
                           }
                           else
                           {
                              addr2065:
                              §§push(1);
                              if(_loc28_ || param2)
                              {
                                 §§goto(addr2073);
                              }
                              else
                              {
                                 addr2078:
                                 if(§§pop() === _loc27_)
                                 {
                                    addr2080:
                                    §§push(2);
                                    if(!(_loc29_ && param2))
                                    {
                                       addr2098:
                                    }
                                 }
                                 else
                                 {
                                    §§push(3);
                                 }
                              }
                              §§goto(addr2103);
                           }
                           §§goto(addr2073);
                        }
                        else
                        {
                           §§push(b2Manifold.§1!0§);
                           if(!_loc29_)
                           {
                              addr2054:
                              §§push(_loc27_);
                              if(!(_loc29_ && param1))
                              {
                                 addr2062:
                                 if(§§pop() === §§pop())
                                 {
                                    if(_loc28_)
                                    {
                                       §§goto(addr2065);
                                    }
                                    §§goto(addr2080);
                                 }
                                 else
                                 {
                                    §§push(b2Manifold.§7" §);
                                    if(!_loc29_)
                                    {
                                       §§goto(addr2078);
                                    }
                                 }
                                 §§goto(addr2098);
                              }
                              §§goto(addr2078);
                           }
                        }
                        §§goto(addr2078);
                     }
                     §§goto(addr2062);
                  }
                  §§goto(addr2054);
               }
               §§goto(addr2080);
            }
            §§goto(addr2104);
         }
         addr68:
      }
   }
}
