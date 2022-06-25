package §_-03n§
{
   import §_-5§.*;
   import §_-Yp§.*;
   import §_-aU§.*;
   import §_-gE§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §_-FP§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!_loc1_)
         {
            §_-FP§ = new b2Mat22();
         }
      }
      
      b2internal var §_-LW§:b2Vec2;
      
      b2internal var §_-09U§:Vector.<b2Vec2>;
      
      b2internal var §_-EH§:Vector.<b2Vec2>;
      
      b2internal var §_-OS§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(!(_loc1_ && _loc2_))
         {
            super();
            while(true)
            {
               §_-1c§ = b2internal::_-04L;
               loop1:
               while(true)
               {
                  this.§_-LW§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§_-09U§ = new Vector.<b2Vec2>();
                     addr100:
                     while(!_loc1_)
                     {
                        this.§_-EH§ = new Vector.<b2Vec2>();
                        if(!(_loc1_ && this))
                        {
                           continue loop2;
                        }
                     }
                     continue loop1;
                  }
               }
               if(!(_loc1_ && this))
               {
                  this.§_-LW§.§_-el§();
                  addr74:
                  if(!_loc2_)
                  {
                     loop5:
                     while(true)
                     {
                        if(_loc2_)
                        {
                           §§goto(addr43);
                        }
                        addr92:
                        while(true)
                        {
                           §_-0CZ§ = b2Settings.b2_polygonRadius;
                           continue loop5;
                        }
                     }
                     §§goto(addr100);
                  }
                  return;
               }
            }
         }
         §§goto(addr92);
      }
      
      public static function §_-99§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§_-A§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §_-Gz§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_ || param1)
         {
            _loc3_.§_-zb§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §_-yM§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§_-Um§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §_-054§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§_-tU§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §_-Qh§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§_-QF§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §_-WO§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Number = NaN;
         var _loc15_:Number = NaN;
         var _loc16_:Number = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc18_ && b2PolygonShape))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(!(_loc18_ && _loc3_))
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(!(_loc18_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc18_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!(_loc18_ && param2))
               {
                  §§push(_loc9_.x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        while(true)
                        {
                           §§push(Number(§§pop()));
                           loop4:
                           while(true)
                           {
                              _loc11_ = §§pop();
                              loop5:
                              while(true)
                              {
                                 §§push(_loc9_.y);
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          while(true)
                                          {
                                             _loc12_ = §§pop();
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr367:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      addr368:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop14:
                                                         while(!_loc18_)
                                                         {
                                                            _loc13_ = §§pop();
                                                            while(!_loc18_)
                                                            {
                                                               §§push(_loc10_.y);
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  addr343:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     addr344:
                                                                     while(_loc17_ || _loc3_)
                                                                     {
                                                                        continue loop11;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                               }
                                                            }
                                                            continue loop5;
                                                         }
                                                         continue loop1;
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                       }
                                    }
                                    if(_loc18_ && param1)
                                    {
                                       continue;
                                    }
                                    if(!_loc17_)
                                    {
                                       continue loop4;
                                    }
                                    §§goto(addr335);
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr284);
            }
            §§goto(addr95);
         }
         if(!_loc18_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc17_ || _loc3_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!(_loc18_ && param2))
            {
               addr427:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(_loc17_ || _loc3_)
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr427);
      }
      
      b2internal static function §_-08P§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc26_:Boolean = true;
         var _loc27_:Boolean = false;
         var _loc4_:* = 0;
         var _loc7_:b2Vec2 = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = 0;
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(!_loc27_)
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(_loc26_ || param1)
               {
                  if(!_loc27_)
                  {
                     _loc5_[param3] = _loc5_[0];
                     addr89:
                     if(true)
                     {
                        break;
                     }
                     while(true)
                     {
                        _loc4_++;
                     }
                     addr91:
                  }
                  loop1:
                  for(; !_loc26_; §§goto(addr91))
                  {
                     while(true)
                     {
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§goto(addr89);
            }
            else
            {
               _loc5_[_loc4_] = param2[_loc4_];
            }
            §§goto(addr105);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(!(_loc27_ && b2PolygonShape))
         {
            §§push(1);
            if(!_loc27_)
            {
               _loc4_ = §§pop();
               if(!(_loc27_ && b2PolygonShape))
               {
                  addr131:
                  loop103:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1188:
                     while(§§pop() <= param3)
                     {
                        _loc7_ = _loc5_[int(_loc4_ - 1)];
                        if(_loc26_ || param3)
                        {
                           §§push(_loc5_[_loc4_].x - _loc7_.x);
                           loop5:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop6:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 while(true)
                                 {
                                    §§push(_loc5_[_loc4_].y - _loc7_.y);
                                    loop8:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop9:
                                       while(true)
                                       {
                                          _loc9_ = §§pop();
                                          loop10:
                                          while(true)
                                          {
                                             §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                             loop11:
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                loop12:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   if(!_loc27_)
                                                   {
                                                      if(!_loc26_)
                                                      {
                                                         break;
                                                      }
                                                      §§push(_loc10_);
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         addr788:
                                                         if(!(_loc26_ || param2))
                                                         {
                                                            continue;
                                                         }
                                                         §§push(_loc20_);
                                                         loop92:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() * §§pop());
                                                            loop60:
                                                            while(true)
                                                            {
                                                               if(!_loc27_)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  continue loop11;
                                                               }
                                                               loop21:
                                                               while(true)
                                                               {
                                                                  _loc9_ = §§pop();
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(-§§pop());
                                                                     loop23:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop24:
                                                                        while(true)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           loop25:
                                                                           while(!(_loc27_ && param2))
                                                                           {
                                                                              §§push(_loc8_);
                                                                              loop26:
                                                                              while(_loc26_ || param1)
                                                                              {
                                                                                 if(!(_loc26_ || param1))
                                                                                 {
                                                                                    continue loop22;
                                                                                 }
                                                                                 §§push(Number(§§pop()));
                                                                                 loop27:
                                                                                 while(true)
                                                                                 {
                                                                                    _loc12_ = §§pop();
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(Number.MAX_VALUE));
                                                                                       loop29:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc13_ = §§pop();
                                                                                          loop30:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(Number.MAX_VALUE));
                                                                                             loop31:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc14_ = §§pop();
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(-Number.MAX_VALUE);
                                                                                                   loop33:
                                                                                                   while(_loc26_ || b2PolygonShape)
                                                                                                   {
                                                                                                      §§push(Number(§§pop()));
                                                                                                      loop34:
                                                                                                      while(_loc26_)
                                                                                                      {
                                                                                                         _loc15_ = §§pop();
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(-Number.MAX_VALUE);
                                                                                                            loop36:
                                                                                                            while(_loc26_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               loop37:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc16_ = §§pop();
                                                                                                                  loop38:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(0);
                                                                                                                     loop39:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc17_ = §§pop();
                                                                                                                        loop40:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           loop41:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc17_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 continue loop39;
                                                                                                                              }
                                                                                                                              if(§§pop() >= param3)
                                                                                                                              {
                                                                                                                                 if(_loc26_ || param3)
                                                                                                                                 {
                                                                                                                                    if(_loc26_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc15_);
                                                                                                                                       loop42:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                          {
                                                                                                                                             if(!(_loc27_ && param3))
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_);
                                                                                                                                                if(_loc26_)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() - §§pop());
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc16_);
                                                                                                                                                      if(!(_loc27_ && param1))
                                                                                                                                                      {
                                                                                                                                                         addr491:
                                                                                                                                                         §§push(_loc14_);
                                                                                                                                                         if(_loc26_ || param3)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() - §§pop());
                                                                                                                                                            loop53:
                                                                                                                                                            while(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop47:
                                                                                                                                                               while(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc27_ && param2))
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc26_ || param2)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              addr749:
                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_ || param3)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop29;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    loop48:
                                                                                                                                                                                    while(_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop());
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc18_ = §§pop();
                                                                                                                                                                                          addr549:
                                                                                                                                                                                          addr769:
                                                                                                                                                                                          loop50:
                                                                                                                                                                                          while(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.95);
                                                                                                                                                                                             loop51:
                                                                                                                                                                                             while(!(_loc27_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                while(_loc26_ || param2)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   while(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_ || param2)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() >= §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            addr1186:
                                                                                                                                                                                                            _loc4_++;
                                                                                                                                                                                                            continue loop103;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop35;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                                                                                                                                         loop79:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                               loop65:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc20_ = §§pop();
                                                                                                                                                                                                                  addr829:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop65;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop79;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr787:
                                                                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                              break loop51;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr908:
                                                                                                                                                                                                                           addr908:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                              break loop33;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr831);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr831:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop40;
                                                                                                                                                                                                               addr828:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr907:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr908);
                                                                                                                                                                                                               continue loop79;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() < §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               loop55:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                  addr733:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc27_ && param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        break loop55;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop27;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        _loc13_ = §§pop();
                                                                                                                                                                                                                        loop56:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr675:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 continue loop56;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§push(_loc21_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr686:
                                                                                                                                                                                                                                    _loc15_ = Number(§§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop12;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr694:
                                                                                                                                                                                                                                       loop61:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr636:
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          addr637:
                                                                                                                                                                                                                                          §§push(_loc16_);
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc26_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break loop61;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(§§pop() > §§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr640:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc26_ || param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc22_);
                                                                                                                                                                                                                                                      break loop47;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop10;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr640:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc17_++;
                                                                                                                                                                                                                                                continue loop41;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr694);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                          break loop50;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr687:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr781);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop9;
                                                                                                                                                                                                               addr732:
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               if(_loc26_ || param2)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc14_);
                                                                                                                                                                                                                  break loop53;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               addr716:
                                                                                                                                                                                                               addr718:
                                                                                                                                                                                                               _loc14_ = Number(§§pop());
                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr671:
                                                                                                                                                                                                                  §§push(_loc21_);
                                                                                                                                                                                                                  break loop48;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr732);
                                                                                                                                                                                                               §§goto(addr744);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr634);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr731:
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   if(§§pop() > §§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr675);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr694);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr768);
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr788);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr769:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                break loop42;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr910:
                                                                                                                                                                                             addr933:
                                                                                                                                                                                             while(_loc26_)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                continue loop21;
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                addr934:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc8_ = §§pop();
                                                                                                                                                                                                   break loop25;
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr674);
                                                                                                                                                                                    §§push(_loc15_);
                                                                                                                                                                                 }
                                                                                                                                                                                 else
                                                                                                                                                                                 {
                                                                                                                                                                                    addr843:
                                                                                                                                                                                    _loc19_ = §§pop();
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr844);
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop37;
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop11;
                                                                                                                                                                              }
                                                                                                                                                                              addr749:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr741);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr716);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr636);
                                                                                                                                                               }
                                                                                                                                                               if(_loc27_ && param2)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr683);
                                                                                                                                                               }
                                                                                                                                                               if(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop8;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        break loop41;
                                                                                                                                                                     }
                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        if(_loc27_ && param2)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop38;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr631);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        continue loop26;
                                                                                                                                                                     }
                                                                                                                                                                     _loc21_ = §§pop();
                                                                                                                                                                     §§push(_loc11_);
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr749);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  addr808:
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            if(!(_loc27_ && param2))
                                                                                                                                                            {
                                                                                                                                                               if(_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop60;
                                                                                                                                                               }
                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                               {
                                                                                                                                                                  addr715:
                                                                                                                                                                  §§goto(addr716);
                                                                                                                                                                  §§push(_loc22_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr671);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr767);
                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr784);
                                                                                                                                                               addr763:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr908);
                                                                                                                                                            addr500:
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr560);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr568);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr503);
                                                                                                                                                }
                                                                                                                                                §§goto(addr491);
                                                                                                                                             }
                                                                                                                                             §§goto(addr843);
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                          addr229:
                                                                                                                                          if(_loc27_ && param3)
                                                                                                                                          {
                                                                                                                                             continue;
                                                                                                                                          }
                                                                                                                                          if(!_loc27_)
                                                                                                                                          {
                                                                                                                                             _loc24_ = §§pop();
                                                                                                                                             if(!_loc26_)
                                                                                                                                             {
                                                                                                                                                continue loop103;
                                                                                                                                             }
                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                             {
                                                                                                                                                if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                {
                                                                                                                                                   continue loop32;
                                                                                                                                                }
                                                                                                                                                if(_loc27_ && param2)
                                                                                                                                                {
                                                                                                                                                   continue loop28;
                                                                                                                                                }
                                                                                                                                                addr262:
                                                                                                                                                if(false)
                                                                                                                                                {
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(0.5);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(_loc26_ || b2PolygonShape)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc13_);
                                                                                                                                                            loop82:
                                                                                                                                                            for(; _loc26_; if(_loc27_ && b2PolygonShape)
                                                                                                                                                            {
                                                                                                                                                               continue;
                                                                                                                                                            },§§push(_loc16_),if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr279);
                                                                                                                                                            },if(!(_loc26_ || param2))
                                                                                                                                                            {
                                                                                                                                                               continue loop92;
                                                                                                                                                            },§§goto(addr190),§§push(§§pop() + §§pop()))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc15_);
                                                                                                                                                               while(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  loop84:
                                                                                                                                                                  while(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           addr294:
                                                                                                                                                                           while(_loc26_ || param1)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                           }
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc26_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                                                                          addr616:
                                                                                                                                                                                          while(_loc26_ || param2)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || param3)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(param1.R);
                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop().col1);
                                                                                                                                                                                                   loop69:
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                                                                      addr431:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop().x = §§pop();
                                                                                                                                                                                                         addr432:
                                                                                                                                                                                                         while(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc27_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(param1.R);
                                                                                                                                                                                                               continue loop69;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr811);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr718);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                }
                                                                                                                                                                                                addr972:
                                                                                                                                                                                                _loc25_ = §§pop();
                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr1165:
                                                                                                                                                                                                   addr1170:
                                                                                                                                                                                                   addr1169:
                                                                                                                                                                                                   addr1182:
                                                                                                                                                                                                   addr1172:
                                                                                                                                                                                                   addr1168:
                                                                                                                                                                                                   addr1183:
                                                                                                                                                                                                   addr1167:
                                                                                                                                                                                                   addr1184:
                                                                                                                                                                                                   addr1163:
                                                                                                                                                                                                   §§push(param1.center);
                                                                                                                                                                                                   §§push(_loc7_.x);
                                                                                                                                                                                                   §§push(_loc25_.col1.x * _loc23_);
                                                                                                                                                                                                   §§push(_loc25_.col2.x);
                                                                                                                                                                                                   if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      addr1181:
                                                                                                                                                                                                      §§push(§§pop() * _loc24_);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§pop().x = §§pop() + (§§pop() + §§pop());
                                                                                                                                                                                                   addr1185:
                                                                                                                                                                                                   §§push(param1.center);
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc7_.y);
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc25_.col1);
                                                                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                               if(!(_loc27_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc23_);
                                                                                                                                                                                                                  if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!(_loc27_ && param2))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc25_.col2);
                                                                                                                                                                                                                              if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().y);
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc24_);
                                                                                                                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr1129:
                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc27_ && param3))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr1139:
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             if(!(_loc27_ && param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr1147:
                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop().y = §§pop();
                                                                                                                                                                                                                                                   addr1034:
                                                                                                                                                                                                                                                   addr1038:
                                                                                                                                                                                                                                                   addr1044:
                                                                                                                                                                                                                                                   addr1043:
                                                                                                                                                                                                                                                   addr1037:
                                                                                                                                                                                                                                                   §§push(param1.§_-0FC§);
                                                                                                                                                                                                                                                   §§push(0.5);
                                                                                                                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1042:
                                                                                                                                                                                                                                                      §§push(§§pop() - _loc13_);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§pop().x = §§pop() * §§pop();
                                                                                                                                                                                                                                                   if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(param1.§_-0FC§);
                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(0.5);
                                                                                                                                                                                                                                                            if(_loc26_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                               if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                                                                                                                     if(_loc26_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1014:
                                                                                                                                                                                                                                                                        §§push(§§pop() * (§§pop() - §§pop()));
                                                                                                                                                                                                                                                                        if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc26_ || param1)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§pop().y = §§pop();
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(false)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr1034);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1186);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1034);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1038);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1044);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1042);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1043);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr1014);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1037);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr1185);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr1150:
                                                                                                                                                                                                                                                   §§goto(addr1150);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1165);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1170);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1169);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1182);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1181);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1129);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1172);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1168);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1183);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1139);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1129);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr1139);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr1167);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1184);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr1147);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr1163);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr1034);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§goto(addr731);
                                                                                                                                                                                                   §§push(_loc13_);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr828);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr640);
                                                                                                                                                                                          addr616:
                                                                                                                                                                                       }
                                                                                                                                                                                       break;
                                                                                                                                                                                       addr160:
                                                                                                                                                                                       if(!(_loc26_ || param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§push(_loc14_);
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop82;
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop84;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr190:
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc27_ && param1))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr204:
                                                                                                                                                                                                   if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc26_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop34;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop33;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop31;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr229);
                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr934);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr723);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      else
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr545);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr549);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr229);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr748);
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr500);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr548);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr686);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr787);
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                              §§goto(addr294);
                                                                                                                                                                           }
                                                                                                                                                                           addr294:
                                                                                                                                                                           §§goto(addr747);
                                                                                                                                                                           addr603:
                                                                                                                                                                        }
                                                                                                                                                                        for(; !_loc27_; if(_loc27_ && b2PolygonShape)
                                                                                                                                                                        {
                                                                                                                                                                           continue;
                                                                                                                                                                        },§§goto(addr160))
                                                                                                                                                                        {
                                                                                                                                                                           _loc23_ = §§pop();
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              continue loop103;
                                                                                                                                                                           }
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!(_loc26_ || param3))
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop30;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr204);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr687);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr593);
                                                                                                                                                                           }
                                                                                                                                                                           else
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr616);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr733);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr637);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr552);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr767);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr674);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr503);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr294);
                                                                                                                                                      §§goto(addr262);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr972);
                                                                                                                                                §§push(param1.R);
                                                                                                                                             }
                                                                                                                                             §§goto(addr382);
                                                                                                                                          }
                                                                                                                                          §§goto(addr660);
                                                                                                                                       }
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc22_ = §§pop();
                                                                                                                                          §§goto(addr778);
                                                                                                                                          §§goto(addr769);
                                                                                                                                       }
                                                                                                                                       §§goto(addr910);
                                                                                                                                    }
                                                                                                                                    §§goto(addr675);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    §§goto(addr616);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              else
                                                                                                                              {
                                                                                                                                 §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                              }
                                                                                                                              §§goto(addr843);
                                                                                                                           }
                                                                                                                           continue loop36;
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop6;
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop24;
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§goto(addr910);
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop23;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr907);
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr933);
                                                }
                                                continue loop5;
                                             }
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr391);
                        continue loop103;
                     }
                  }
               }
               return;
            }
            §§goto(addr1188);
         }
         §§goto(addr131);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc3_ || _loc1_)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(!(_loc4_ && param1))
         {
            super.Set(param1);
            if(_loc5_ || _loc3_)
            {
               §§goto(addr39);
            }
            §§goto(addr43);
         }
         addr39:
         if(param1 is b2PolygonShape)
         {
            addr43:
            _loc2_ = param1 as b2PolygonShape;
            if(!(_loc4_ && this))
            {
               this.§_-LW§.SetV(_loc2_.§_-LW§);
               loop0:
               while(true)
               {
                  this.§_-OS§ = _loc2_.§_-OS§;
                  loop1:
                  while(true)
                  {
                     this.§_-Md§(this.§_-OS§);
                     addr145:
                     while(true)
                     {
                        _loc3_ = 0;
                        if(_loc5_ || _loc2_)
                        {
                           if(_loc5_ || param1)
                           {
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                     addr139:
                     loop3:
                     while(true)
                     {
                        if(_loc3_ < this.§_-OS§)
                        {
                           this.§_-09U§[_loc3_].SetV(_loc2_.§_-09U§[_loc3_]);
                           loop4:
                           while(true)
                           {
                              loop5:
                              while(true)
                              {
                                 this.§_-EH§[_loc3_].SetV(_loc2_.§_-EH§[_loc3_]);
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       _loc3_++;
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(_loc5_ || param1)
                                       {
                                          if(true)
                                          {
                                             break loop5;
                                          }
                                          continue loop5;
                                       }
                                       continue;
                                    }
                                    continue loop4;
                                 }
                              }
                              continue loop3;
                           }
                        }
                        §§goto(addr162);
                     }
                  }
               }
            }
            §§goto(addr145);
         }
         addr162:
      }
      
      public function §_-A§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(!_loc7_)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc8_)
         {
            this.§_-zb§(_loc3_,param2);
         }
      }
      
      public function §_-zb§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:int = 0;
         var _loc4_:int = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(_loc7_)
         {
            §§push(param2);
            if(!_loc8_)
            {
               if(§§pop() == 0)
               {
                  if(_loc7_)
                  {
                     addr245:
                     param2 = param1.length;
                     addr246:
                     while(true)
                     {
                     }
                     addr246:
                  }
                  §§goto(addr246);
               }
               loop0:
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  loop1:
                  while(true)
                  {
                     this.§_-OS§ = param2;
                     while(true)
                     {
                        this.§_-Md§(param2);
                        while(!_loc8_)
                        {
                           if(_loc7_ || _loc3_)
                           {
                              _loc3_ = 0;
                              if(!_loc8_)
                              {
                                 if(_loc7_)
                                 {
                                    break loop1;
                                 }
                                 continue loop1;
                              }
                              continue;
                              continue;
                           }
                           continue loop0;
                        }
                     }
                  }
                  addr173:
                  if(_loc3_ >= this.§_-OS§)
                  {
                     addr177:
                     _loc3_ = 0;
                     addr140:
                     addr176:
                     addr178:
                     if(_loc3_ < this.§_-OS§)
                     {
                        §§push(_loc3_);
                        if(!(_loc8_ && param2))
                        {
                           addr162:
                           _loc4_ = §§pop();
                           addr163:
                           if(_loc7_ || param2)
                           {
                              §§push(_loc3_);
                              if(_loc7_ || param2)
                              {
                                 if(_loc7_)
                                 {
                                    §§push(1);
                                    if(!(_loc8_ && this))
                                    {
                                       if(_loc7_ || param2)
                                       {
                                          §§push(§§pop() + §§pop());
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             if(§§pop() < this.§_-OS§)
                                             {
                                                if(_loc7_ || param2)
                                                {
                                                   if(_loc7_ || param1)
                                                   {
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         §§push(_loc3_);
                                                         if(!_loc8_)
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§push(1);
                                                               if(_loc7_ || this)
                                                               {
                                                                  addr101:
                                                                  §§push(int(§§pop() + §§pop()));
                                                                  if(_loc7_ || _loc3_)
                                                                  {
                                                                     addr118:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        addr126:
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           _loc5_ = §§pop();
                                                                           if(!_loc8_)
                                                                           {
                                                                              addr136:
                                                                              if(!_loc8_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr140);
                                                                                 }
                                                                                 _loc6_ = b2Math.§_-DO§(this.§_-09U§[_loc5_],this.§_-09U§[_loc4_]);
                                                                                 if(!(_loc8_ && this))
                                                                                 {
                                                                                    b2Settings.b2Assert(_loc6_.§_-wN§() > Number.MIN_VALUE);
                                                                                    this.§_-EH§[_loc3_].SetV(b2Math.§_-bM§(_loc6_,1));
                                                                                    addr322:
                                                                                 }
                                                                                 addr285:
                                                                                 this.§_-EH§[_loc3_].Normalize();
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    _loc3_++;
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       if(_loc7_ || param1)
                                                                                       {
                                                                                          if(false)
                                                                                          {
                                                                                             §§goto(addr285);
                                                                                          }
                                                                                          §§goto(addr140);
                                                                                       }
                                                                                       §§goto(addr322);
                                                                                    }
                                                                                    §§goto(addr285);
                                                                                 }
                                                                                 addr314:
                                                                                 §§goto(addr314);
                                                                              }
                                                                              §§goto(addr176);
                                                                           }
                                                                           §§goto(addr337);
                                                                        }
                                                                        §§goto(addr173);
                                                                     }
                                                                     §§goto(addr140);
                                                                     addr109:
                                                                  }
                                                                  §§goto(addr118);
                                                               }
                                                               §§goto(addr140);
                                                            }
                                                            §§goto(addr177);
                                                         }
                                                         §§goto(addr118);
                                                      }
                                                      §§goto(addr178);
                                                   }
                                                   §§goto(addr163);
                                                }
                                                §§goto(addr136);
                                             }
                                             §§push(0);
                                             if(_loc7_ || this)
                                             {
                                                §§goto(addr118);
                                             }
                                             §§goto(addr126);
                                          }
                                          §§goto(addr101);
                                       }
                                       §§goto(addr173);
                                    }
                                    §§goto(addr177);
                                 }
                                 §§goto(addr162);
                              }
                              §§goto(addr109);
                           }
                           addr181:
                           §§goto(addr173);
                        }
                        §§goto(addr177);
                     }
                     if(!_loc8_)
                     {
                        addr329:
                        this.§_-LW§ = §_-WO§(this.§_-09U§,this.§_-OS§);
                     }
                     addr337:
                     return;
                  }
                  this.§_-09U§[_loc3_].SetV(param1[_loc3_]);
                  if(_loc7_ || param2)
                  {
                     _loc3_++;
                     §§goto(addr181);
                  }
                  §§goto(addr329);
               }
            }
         }
         §§goto(addr245);
      }
      
      public function §_-Um§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(_loc4_ || param1)
         {
            this.§_-OS§ = 4;
            while(true)
            {
               this.§_-Md§(4);
               loop1:
               for(; !(_loc3_ && _loc3_); if(!(_loc4_ || param2))
               {
                  continue;
               },this.§_-09U§[2].Set(param1,param2),loop4:
               while(true)
               {
                  this.§_-09U§[3].Set(-param1,param2);
                  loop5:
                  while(true)
                  {
                     this.§_-EH§[0].Set(0,-1);
                     while(true)
                     {
                        this.§_-EH§[1].Set(1,0);
                        loop7:
                        while(_loc4_)
                        {
                           if(!_loc4_)
                           {
                              continue loop5;
                           }
                           this.§_-EH§[2].Set(0,1);
                           while(true)
                           {
                              this.§_-EH§[3].Set(-1,0);
                              loop9:
                              while(_loc4_ || param1)
                              {
                                 if(!_loc3_)
                                 {
                                    while(true)
                                    {
                                       this.§_-LW§.§_-el§();
                                       if(!_loc4_)
                                       {
                                          continue loop9;
                                       }
                                       if(_loc3_)
                                       {
                                          continue loop4;
                                       }
                                       §§goto(addr37);
                                    }
                                    §§goto(addr44);
                                    continue;
                                 }
                                 continue loop7;
                              }
                           }
                        }
                     }
                  }
               })
               {
                  this.§_-09U§[0].Set(-param1,-param2);
                  while(true)
                  {
                     this.§_-09U§[1].Set(param1,-param2);
                     while(_loc4_)
                     {
                        continue loop1;
                        if(_loc4_ || param2)
                        {
                           return;
                           addr44:
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr62);
      }
      
      public function §_-tU§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§_-OS§ = 4;
         }
         while(true)
         {
            this.§_-Md§(4);
            loop1:
            while(true)
            {
               this.§_-09U§[0].Set(-param1,-param2);
               loop2:
               while(true)
               {
                  this.§_-09U§[1].Set(param1,-param2);
                  while(true)
                  {
                     this.§_-09U§[2].Set(param1,param2);
                     loop4:
                     while(true)
                     {
                        this.§_-09U§[3].Set(-param1,param2);
                        loop5:
                        while(true)
                        {
                           this.§_-EH§[0].Set(0,-1);
                           while(_loc7_)
                           {
                              continue loop1;
                              while(_loc7_ || param2)
                              {
                                 continue loop5;
                                 addr51:
                                 if(_loc7_ || param3)
                                 {
                                    this.§_-LW§ = param3;
                                    if(!(_loc8_ && param1))
                                    {
                                       continue loop4;
                                    }
                                    loop10:
                                    while(true)
                                    {
                                       if(!_loc8_)
                                       {
                                          §§goto(addr51);
                                       }
                                       else
                                       {
                                          while(true)
                                          {
                                             addr41:
                                             while(true)
                                             {
                                                this.§_-EH§[3].Set(-1,0);
                                                continue loop10;
                                             }
                                             continue loop4;
                                          }
                                          addr67:
                                       }
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
            if(_loc8_ && param2)
            {
               continue;
            }
            this.§_-EH§[2].Set(0,1);
            §§goto(addr67);
         }
      }
      
      public function §_-QF§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         if(!_loc3_)
         {
            this.§_-OS§ = 2;
            while(true)
            {
               this.§_-Md§(2);
               addr223:
               addr76:
               while(true)
               {
                  this.§_-09U§[0].SetV(param1);
                  loop2:
                  while(true)
                  {
                     this.§_-09U§[1].SetV(param2);
                     loop3:
                     while(true)
                     {
                        §§push(this.§_-LW§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           addr176:
                           while(true)
                           {
                              §§push(param1.x);
                              if(!(_loc3_ && param2))
                              {
                                 §§push(param2.x);
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr143:
                                    §§push(param2.y);
                                    if(_loc3_ && this)
                                    {
                                       continue;
                                    }
                                    §§push(§§pop() + §§pop());
                                    if(!(_loc3_ && _loc3_))
                                    {
                                       addr161:
                                       §§push(§§pop() * §§pop());
                                       if(!_loc3_)
                                       {
                                          §§pop().y = §§pop();
                                          continue loop3;
                                       }
                                    }
                                    else
                                    {
                                       addr198:
                                       while(true)
                                       {
                                          §§push(§§pop() * §§pop());
                                       }
                                       addr198:
                                    }
                                    while(true)
                                    {
                                       §§pop().x = §§pop();
                                       addr200:
                                       while(true)
                                       {
                                          if(!_loc3_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                       §§goto(addr198);
                                    }
                                 }
                              }
                              §§goto(addr198);
                           }
                        }
                     }
                  }
               }
               if(!(_loc4_ || this))
               {
                  continue;
               }
               this.§_-EH§[1].y = -this.§_-EH§[0].y;
               addr83:
               if(!_loc3_)
               {
                  addr38:
                  if(_loc4_ || param1)
                  {
                     if(!_loc3_)
                     {
                        if(!_loc4_)
                        {
                           §§goto(addr223);
                        }
                        return;
                     }
                     §§goto(addr164);
                  }
                  while(true)
                  {
                     this.§_-EH§[0].Normalize();
                     loop13:
                     while(true)
                     {
                        this.§_-EH§[1].x = -this.§_-EH§[0].x;
                        addr62:
                        while(true)
                        {
                           if(!(_loc4_ || param2))
                           {
                              continue loop13;
                           }
                           if(!(_loc4_ || _loc3_))
                           {
                              break;
                           }
                           §§goto(addr76);
                           §§goto(addr83);
                        }
                        §§goto(addr200);
                     }
                     §§goto(addr38);
                  }
                  addr113:
               }
               §§goto(addr62);
            }
         }
         while(true)
         {
            this.§_-EH§[0] = b2Math.§_-bM§(b2Math.§_-DO§(param2,param1),1);
            §§goto(addr113);
         }
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(_loc12_)
         {
            §§push(§§pop() - param1.position.x);
            if(_loc12_ || param2)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(_loc12_)
         {
            §§push(§§pop() - param1.position.y);
            if(_loc12_ || param1)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(_loc12_)
         {
            §§push(_loc4_.col1.x);
            if(_loc12_ || this)
            {
               §§push(§§pop() * §§pop());
               if(!_loc11_)
               {
                  addr76:
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     addr83:
                     §§push(§§pop() + §§pop() * _loc4_.col1.y);
                     if(_loc12_ || _loc3_)
                     {
                        addr91:
                        §§push(Number(§§pop()));
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(_loc12_ || _loc3_)
                     {
                        §§push(_loc4_.col2.x);
                        if(_loc12_ || param2)
                        {
                           §§push(§§pop() * §§pop());
                           if(!_loc11_)
                           {
                              addr114:
                              §§push(_loc6_);
                              if(!_loc12_)
                              {
                              }
                              §§goto(addr121);
                           }
                           §§goto(addr139);
                        }
                        addr121:
                        §§push(§§pop() + §§pop() * _loc4_.col2.y);
                        if(!(_loc11_ && param1))
                        {
                           addr139:
                           §§push(Number(§§pop()));
                        }
                        var _loc8_:* = §§pop();
                        var _loc9_:int = 0;
                        while(true)
                        {
                           if(_loc9_ >= this.§_-OS§)
                           {
                              return true;
                           }
                           _loc3_ = this.§_-09U§[_loc9_];
                           if(!(_loc11_ && param1))
                           {
                              §§push(_loc7_);
                              if(_loc12_ || param1)
                              {
                                 §§push(_loc3_.x);
                                 if(!_loc11_)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!_loc11_)
                                    {
                                       addr173:
                                       §§push(Number(§§pop()));
                                       if(!_loc11_)
                                       {
                                          _loc5_ = §§pop();
                                          if(_loc12_)
                                          {
                                             §§push(_loc8_);
                                             if(!_loc11_)
                                             {
                                                addr184:
                                                §§push(§§pop() - _loc3_.y);
                                                if(!_loc12_)
                                                {
                                                }
                                                addr188:
                                                _loc6_ = §§pop();
                                                addr189:
                                                _loc3_ = this.§_-EH§[_loc9_];
                                                if(!_loc11_)
                                                {
                                                   §§push(_loc3_.x);
                                                   if(_loc12_ || _loc3_)
                                                   {
                                                      §§push(_loc5_);
                                                      if(_loc12_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc11_ && param1))
                                                         {
                                                            §§push(_loc3_.y);
                                                            if(_loc12_)
                                                            {
                                                               §§push(§§pop() * _loc6_);
                                                               if(_loc12_ || param1)
                                                               {
                                                               }
                                                               addr256:
                                                               if(§§pop() > §§pop())
                                                               {
                                                                  if(!(_loc11_ && this))
                                                                  {
                                                                     break;
                                                                  }
                                                               }
                                                               else
                                                               {
                                                                  addr273:
                                                                  _loc9_++;
                                                               }
                                                               continue;
                                                            }
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               addr238:
                                                               §§push(Number(§§pop()));
                                                               if(_loc12_)
                                                               {
                                                                  addr251:
                                                                  §§push(§§pop());
                                                                  if(!_loc11_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                  }
                                                                  §§goto(addr256);
                                                               }
                                                            }
                                                            §§goto(addr256);
                                                            §§push(0);
                                                         }
                                                         §§goto(addr238);
                                                      }
                                                      §§goto(addr256);
                                                   }
                                                   §§goto(addr251);
                                                }
                                                §§goto(addr273);
                                             }
                                          }
                                          §§goto(addr189);
                                       }
                                       §§push(Number(§§pop()));
                                    }
                                    §§goto(addr188);
                                 }
                                 §§goto(addr184);
                              }
                              §§goto(addr173);
                           }
                           §§goto(addr184);
                        }
                        return false;
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr83);
               }
               §§goto(addr91);
            }
            §§goto(addr83);
         }
         §§goto(addr76);
      }
      
      override public function RayCast(param1:b2RayCastOutput, param2:b2RayCastInput, param3:b2Transform) : Boolean
      {
         var _loc20_:Boolean = false;
         var _loc21_:Boolean = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:b2Mat22 = null;
         var _loc9_:b2Vec2 = null;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         §§push(0);
         if(_loc21_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§_-r9§);
         if(!(_loc20_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc21_)
         {
            §§push(param2.p1);
            if(!(_loc20_ && param2))
            {
               §§push(§§pop().x);
               if(!_loc20_)
               {
                  §§push(param3.position);
                  if(_loc21_ || param2)
                  {
                     §§push(§§pop().x);
                     if(_loc21_ || param2)
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc20_)
                        {
                           §§push(Number(§§pop()));
                           if(_loc21_ || this)
                           {
                              addr89:
                              _loc6_ = §§pop();
                              addr115:
                              if(_loc21_ || param2)
                              {
                                 addr99:
                                 §§push(param2.p1.y);
                                 if(_loc21_)
                                 {
                                    addr105:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc20_ && this))
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                              }
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(!(_loc20_ && param1))
                              {
                                 §§push(_loc8_.col1.x);
                                 if(_loc21_ || param2)
                                 {
                                    addr150:
                                    §§push(§§pop() * §§pop());
                                    if(!_loc20_)
                                    {
                                       §§push(_loc7_);
                                       if(_loc21_)
                                       {
                                          §§push(§§pop() * _loc8_.col1.y);
                                       }
                                    }
                                    var _loc10_:Number = §§pop();
                                    §§push(_loc6_);
                                    if(!_loc20_)
                                    {
                                       §§push(_loc8_.col2.x);
                                       if(_loc21_)
                                       {
                                          §§push(§§pop() * §§pop());
                                          if(!(_loc20_ && param3))
                                          {
                                             §§push(_loc7_);
                                             if(_loc21_)
                                             {
                                                addr175:
                                                §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                if(_loc20_ && param2)
                                                {
                                                }
                                                var _loc11_:* = §§pop();
                                                if(!_loc20_)
                                                {
                                                   §§push(param2.p2);
                                                   if(_loc21_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc21_ || this)
                                                      {
                                                         §§push(param3.position);
                                                         if(_loc21_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc21_)
                                                               {
                                                                  addr209:
                                                                  §§push(Number(§§pop()));
                                                                  if(!_loc20_)
                                                                  {
                                                                     addr212:
                                                                     _loc6_ = §§pop();
                                                                     if(!_loc20_)
                                                                     {
                                                                        addr217:
                                                                        §§push(param2.p2.y);
                                                                        if(_loc21_ || param3)
                                                                        {
                                                                           addr228:
                                                                           §§push(§§pop() - param3.position.y);
                                                                           if(!(_loc20_ && param2))
                                                                           {
                                                                              addr236:
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        _loc7_ = §§pop();
                                                                     }
                                                                     _loc8_ = param3.R;
                                                                     §§push(_loc6_);
                                                                     if(!(_loc20_ && param3))
                                                                     {
                                                                        §§push(_loc8_.col1.x);
                                                                        if(!(_loc20_ && param1))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc21_)
                                                                           {
                                                                              addr263:
                                                                              §§push(_loc7_);
                                                                              if(!(_loc20_ && param2))
                                                                              {
                                                                                 addr275:
                                                                                 §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    addr278:
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 var _loc12_:* = §§pop();
                                                                                 §§push(_loc6_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(_loc8_.col2.x);
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr294:
                                                                                             §§push(§§pop() * _loc8_.col2.y);
                                                                                          }
                                                                                          §§push(§§pop() + §§pop());
                                                                                          if(_loc20_ && param2)
                                                                                          {
                                                                                          }
                                                                                          addr307:
                                                                                          var _loc13_:* = §§pop();
                                                                                          §§push(_loc12_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop() - _loc10_);
                                                                                             if(_loc21_ || param1)
                                                                                             {
                                                                                                addr320:
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             var _loc14_:* = §§pop();
                                                                                             §§push(_loc13_);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(§§pop() - _loc11_);
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   addr329:
                                                                                                   §§push(Number(§§pop()));
                                                                                                }
                                                                                                var _loc15_:* = §§pop();
                                                                                                var _loc16_:* = -1;
                                                                                                var _loc17_:int = 0;
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc17_);
                                                                                                   if(!(_loc20_ && param3))
                                                                                                   {
                                                                                                      §§push(this.§_-OS§);
                                                                                                      if(!(_loc20_ && this))
                                                                                                      {
                                                                                                         if(§§pop() >= §§pop())
                                                                                                         {
                                                                                                            §§goto(addr835);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§push((_loc9_ = this.§_-09U§[_loc17_]).x);
                                                                                                            if(_loc21_)
                                                                                                            {
                                                                                                               §§push(_loc10_);
                                                                                                               if(_loc21_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     if(_loc21_ || param1)
                                                                                                                     {
                                                                                                                        addr366:
                                                                                                                        _loc6_ = §§pop();
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           if(!_loc20_)
                                                                                                                           {
                                                                                                                              addr374:
                                                                                                                              §§push(§§pop() - _loc11_);
                                                                                                                              if(_loc21_ || param2)
                                                                                                                              {
                                                                                                                                 addr383:
                                                                                                                                 _loc7_ = Number(§§pop());
                                                                                                                              }
                                                                                                                           }
                                                                                                                           §§goto(addr383);
                                                                                                                        }
                                                                                                                        §§push((_loc9_ = this.§_-EH§[_loc17_]).x);
                                                                                                                        if(!(_loc20_ && this))
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           if(_loc21_ || param3)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 §§push(_loc9_.y);
                                                                                                                                 if(!(_loc20_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    if(!(_loc20_ && param1))
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                       if(_loc21_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc21_)
                                                                                                                                          {
                                                                                                                                             §§push(Number(§§pop()));
                                                                                                                                             if(!_loc20_)
                                                                                                                                             {
                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                if(_loc21_ || param1)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc9_.x);
                                                                                                                                                   if(_loc21_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc14_);
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                      }
                                                                                                                                                      addr789:
                                                                                                                                                   }
                                                                                                                                                   loop2:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc9_.y);
                                                                                                                                                      addr792:
                                                                                                                                                      loop51:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         addr793:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(_loc21_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               if(!_loc20_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  loop50:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop());
                                                                                                                                                                     addr801:
                                                                                                                                                                     loop54:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        _loc19_ = §§pop();
                                                                                                                                                                        loop34:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           addr803:
                                                                                                                                                                           loop12:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              if(§§pop() != §§pop())
                                                                                                                                                                              {
                                                                                                                                                                                 addr776:
                                                                                                                                                                                 §§push(_loc19_);
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       break loop12;
                                                                                                                                                                                    }
                                                                                                                                                                                    continue loop34;
                                                                                                                                                                                 }
                                                                                                                                                                                 addr776:
                                                                                                                                                                              }
                                                                                                                                                                              addr804:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                              }
                                                                                                                                                                              continue loop34;
                                                                                                                                                                           }
                                                                                                                                                                           addr778:
                                                                                                                                                                           §§push(0);
                                                                                                                                                                           loop33:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 loop5:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(§§pop())
                                                                                                                                                                                    {
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§pop();
                                                                                                                                                                                          loop7:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc18_);
                                                                                                                                                                                             loop8:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc4_);
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc20_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                      loop10:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                         loop11:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() < §§pop());
                                                                                                                                                                                                            addr755:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr756:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                     loop24:
                                                                                                                                                                                                                     while(!(_loc20_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                              loop19:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc20_ && param1)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop33;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(!(_loc20_ && param3))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                       if(_loc21_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc21_ || param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop());
                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             if(§§pop())
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr710:
                                                                                                                                                                                                                                                loop20:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§pop();
                                                                                                                                                                                                                                                   loop21:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc21_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc20_ && this)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop7;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc20_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            if(!(_loc20_ && this))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop20;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop19;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                  continue loop10;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop50;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            loop23:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc20_ && param1)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop24;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               _loc5_ = §§pop();
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     break loop23;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop21;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr650:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(_loc5_);
                                                                                                                                                                                                                                                               if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop8;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     loop18:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                        addr628:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop11;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc20_ && param3)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop51;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                              while(_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr650);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           else
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop54;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr759:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              break loop24;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr626:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop18;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr647);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr650);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr650:
                                                                                                                                                                                                                                                            §§goto(addr776);
                                                                                                                                                                                                                                                            addr460:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         else
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr460);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr772:
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr650);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      else
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                            addr758:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         addr757:
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr759);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop24;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   addr806:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(§§pop() < §§pop())
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr808);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr772);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop54;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr710:
                                                                                                                                                                                                                                                addr805:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§goto(addr626);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr624:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr650);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr808:
                                                                                                                                                                                                                                          return false;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr710);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    else
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§goto(addr789);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr806);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr679:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr758);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc21_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              _loc4_ = §§pop();
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc17_);
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(int(§§pop()));
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 _loc16_ = §§pop();
                                                                                                                                                                                                                                 addr734:
                                                                                                                                                                                                                                 while(_loc21_ || this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§goto(addr650);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr770:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        else
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§goto(addr776);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr778);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr757);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   else
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§goto(addr803);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr776);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr755);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop33;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr805);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr806);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                                §§goto(addr537);
                                                                                                                                             }
                                                                                                                                             §§goto(addr649);
                                                                                                                                          }
                                                                                                                                          §§goto(addr770);
                                                                                                                                       }
                                                                                                                                       §§goto(addr510);
                                                                                                                                    }
                                                                                                                                    §§goto(addr793);
                                                                                                                                 }
                                                                                                                                 §§goto(addr792);
                                                                                                                              }
                                                                                                                              §§goto(addr495);
                                                                                                                           }
                                                                                                                           §§goto(addr801);
                                                                                                                        }
                                                                                                                        §§goto(addr679);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr383);
                                                                                                               }
                                                                                                               §§goto(addr374);
                                                                                                            }
                                                                                                            §§goto(addr366);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr832);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                addr832:
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§goto(addr835);
                                                                                                   }
                                                                                                   addr835:
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(_loc16_);
                                                                                                      break loop0;
                                                                                                   }
                                                                                                   param1.fraction = _loc4_;
                                                                                                   _loc8_ = param3.R;
                                                                                                   _loc9_ = this.§_-EH§[_loc16_];
                                                                                                   if(_loc21_ || param3)
                                                                                                   {
                                                                                                      §§push(param1.normal);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col1);
                                                                                                         addr948:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr949:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_.x);
                                                                                                               if(_loc21_ || param2)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc8_.col2);
                                                                                                                     addr961:
                                                                                                                     addr925:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop().x);
                                                                                                                        addr962:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(_loc9_.y);
                                                                                                                           addr964:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr925:
                                                                                                                     if(!(_loc20_ && this))
                                                                                                                     {
                                                                                                                        §§goto(addr942);
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                               addr965:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                  addr966:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§pop().x = §§pop();
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr946:
                                                                                                   }
                                                                                                   else if(true)
                                                                                                   {
                                                                                                      §§goto(addr968);
                                                                                                   }
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(param1.normal);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(_loc8_.col1);
                                                                                                         if(_loc21_ || param3)
                                                                                                         {
                                                                                                            §§push(§§pop().y);
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(_loc9_.x);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc20_)
                                                                                                                     {
                                                                                                                        if(_loc20_)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(_loc8_.col2);
                                                                                                                           if(!(_loc20_ && this))
                                                                                                                           {
                                                                                                                              §§push(§§pop().y);
                                                                                                                              if(!_loc20_)
                                                                                                                              {
                                                                                                                                 addr917:
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.y);
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       addr924:
                                                                                                                                       §§goto(addr925);
                                                                                                                                       §§push(§§pop() + §§pop() * §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr964);
                                                                                                                                 }
                                                                                                                                 §§goto(addr965);
                                                                                                                              }
                                                                                                                              §§goto(addr924);
                                                                                                                           }
                                                                                                                           §§goto(addr961);
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr949);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr925);
                                                                                                                  }
                                                                                                                  §§goto(addr962);
                                                                                                               }
                                                                                                               §§goto(addr917);
                                                                                                            }
                                                                                                            §§goto(addr925);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            §§goto(addr948);
                                                                                                         }
                                                                                                      }
                                                                                                      else
                                                                                                      {
                                                                                                         §§goto(addr946);
                                                                                                      }
                                                                                                      §§goto(addr948);
                                                                                                   }
                                                                                                   addr942:
                                                                                                   §§pop().y = §§pop();
                                                                                                   return true;
                                                                                                }
                                                                                                addr968:
                                                                                                return false;
                                                                                                §§push(0);
                                                                                             }
                                                                                             §§goto(addr329);
                                                                                          }
                                                                                          §§goto(addr320);
                                                                                       }
                                                                                       §§goto(addr307);
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                    §§goto(addr294);
                                                                                 }
                                                                                 §§goto(addr307);
                                                                              }
                                                                              §§goto(addr275);
                                                                           }
                                                                           §§goto(addr278);
                                                                        }
                                                                        §§goto(addr275);
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr236);
                                                               }
                                                               §§goto(addr212);
                                                            }
                                                         }
                                                         §§goto(addr228);
                                                      }
                                                      §§goto(addr209);
                                                   }
                                                }
                                                §§goto(addr217);
                                             }
                                          }
                                          §§goto(addr175);
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr175);
                                 }
                                 §§push(§§pop() + §§pop());
                                 if(!_loc21_)
                                 {
                                 }
                              }
                              §§goto(addr150);
                           }
                           _loc7_ = §§pop();
                           §§goto(addr115);
                        }
                        §§goto(addr89);
                     }
                  }
               }
               §§goto(addr105);
            }
            §§goto(addr99);
         }
         §§goto(addr89);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = false;
         var _loc13_:Boolean = true;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§_-09U§[0];
         §§push(param2.position.x);
         if(_loc13_)
         {
            §§push(_loc3_.col1.x);
            if(!_loc12_)
            {
               §§push(_loc4_.x);
               if(!(_loc12_ && param2))
               {
                  §§push(§§pop() * §§pop());
                  if(_loc13_ || param2)
                  {
                     addr58:
                     §§push(_loc3_.col2.x);
                     if(_loc13_ || _loc3_)
                     {
                        addr68:
                        §§push(§§pop() * _loc4_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc13_ || this)
                  {
                     addr80:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc12_ && _loc3_))
                  {
                     §§push(_loc3_.col1.y);
                     if(!_loc12_)
                     {
                        §§push(_loc4_.x);
                        if(_loc13_ || _loc3_)
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc13_ || this)
                           {
                              addr114:
                              §§push(_loc3_.col2.y);
                              if(_loc13_ || param1)
                              {
                                 addr124:
                                 §§push(§§pop() * _loc4_.y);
                              }
                              §§push(§§pop() + §§pop());
                           }
                           §§push(§§pop() + §§pop());
                           if(!(_loc12_ && param1))
                           {
                              addr137:
                              var _loc6_:Number = §§pop();
                              §§push(_loc5_);
                              if(_loc13_ || _loc3_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              while(_loc9_ < this.§_-OS§)
                              {
                                 _loc4_ = this.§_-09U§[_loc9_];
                                 if(_loc13_)
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr511:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          addr513:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr514:
                                             while(true)
                                             {
                                                §§push(_loc4_.x);
                                                addr516:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr517:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      addr519:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr520:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.y);
                                                            addr522:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr523:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr524:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     addr525:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        addr526:
                                                                        while(true)
                                                                        {
                                                                           _loc10_ = §§pop();
                                                                           continue loop1;
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
                                 §§goto(addr507);
                              }
                              if(_loc13_ || param2)
                              {
                                 §§push(param1.§_-Bv§);
                                 if(_loc13_ || _loc3_)
                                 {
                                    §§push(_loc5_);
                                    if(_loc13_ || param2)
                                    {
                                       §§push(§§pop() - b2internal::_-0CZ);
                                       if(!_loc12_)
                                       {
                                          §§pop().x = §§pop();
                                          if(_loc13_ || this)
                                          {
                                             addr614:
                                             §§push(param1.§_-Bv§);
                                             §§push(_loc6_);
                                             if(!_loc12_)
                                             {
                                                addr619:
                                                §§pop().y = §§pop() - b2internal::_-0CZ;
                                                while(true)
                                                {
                                                   §§push(param1.§_-MB§);
                                                   loop50:
                                                   while(true)
                                                   {
                                                      §§push(_loc7_);
                                                      addr608:
                                                      while(true)
                                                      {
                                                         §§pop().x = §§pop() + b2internal::_-0CZ;
                                                         continue loop50;
                                                      }
                                                   }
                                                   if(!(_loc13_ || param2))
                                                   {
                                                      continue;
                                                   }
                                                   return;
                                                   addr603:
                                                }
                                                addr620:
                                             }
                                             §§goto(addr619);
                                          }
                                          §§goto(addr603);
                                       }
                                    }
                                    §§goto(addr619);
                                 }
                                 §§goto(addr614);
                              }
                              §§goto(addr620);
                           }
                           §§goto(addr137);
                        }
                        §§goto(addr124);
                     }
                     §§goto(addr114);
                  }
                  §§goto(addr137);
               }
               §§goto(addr68);
            }
            §§goto(addr58);
         }
         §§goto(addr80);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(_loc27_ || this)
         {
            if(this.§_-OS§ == 2)
            {
               while(true)
               {
                  §§push(param1.center);
                  addr132:
                  while(true)
                  {
                     §§push(0.5);
                     if(_loc27_ || this)
                     {
                        §§push(§§pop() * (this.§_-09U§[0].x + this.§_-09U§[1].x));
                     }
                     addr152:
                     while(true)
                     {
                        §§pop().x = §§pop();
                     }
                  }
                  addr118:
                  while(_loc27_ || param1)
                  {
                     param1.§_-ze§ = 0;
                     while(_loc27_)
                     {
                        param1.§_-CG§ = 0;
                        if(!(_loc28_ && this))
                        {
                           return;
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(0);
               if(_loc27_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(_loc27_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(_loc27_ || param2)
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(1 / 3);
               if(!_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§_-OS§)
               {
                  _loc11_ = this.§_-09U§[_loc10_];
                  if(_loc27_)
                  {
                     _loc12_ = _loc10_ + 1 < this.§_-OS§ ? this.§_-09U§[int(_loc10_ + 1)] : this.§_-09U§[0];
                     if(_loc27_)
                     {
                        §§push(_loc11_.x);
                        if(_loc27_ || param2)
                        {
                           §§push(_loc7_);
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop11:
                              while(!(_loc28_ && _loc3_))
                              {
                                 §§push(§§pop() - §§pop());
                                 loop12:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop13:
                                    while(true)
                                    {
                                       _loc15_ = §§pop();
                                       loop14:
                                       while(true)
                                       {
                                          §§push(_loc12_.y);
                                          loop15:
                                          while(true)
                                          {
                                             if(_loc27_)
                                             {
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc8_);
                                                   loop16:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      loop17:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop18:
                                                         while(true)
                                                         {
                                                            _loc16_ = §§pop();
                                                            loop19:
                                                            while(_loc27_ || _loc3_)
                                                            {
                                                               §§push(_loc13_);
                                                               loop20:
                                                               while(true)
                                                               {
                                                                  §§push(_loc16_);
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() * §§pop());
                                                                     loop22:
                                                                     while(_loc27_)
                                                                     {
                                                                        §§push(_loc14_);
                                                                        loop23:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc15_);
                                                                           loop24:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              loop25:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() - §§pop());
                                                                                 loop26:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop27:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc17_ = §§pop();
                                                                                       loop28:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                             continue loop16;
                                                                                             addr639:
                                                                                             if(!(_loc27_ || _loc3_))
                                                                                             {
                                                                                                continue;
                                                                                             }
                                                                                             §§push(Number(§§pop()));
                                                                                             loop120:
                                                                                             for(; !(_loc28_ && param2); if(_loc28_ && param2)
                                                                                             {
                                                                                                continue;
                                                                                             },if(!(_loc28_ && param1))
                                                                                             {
                                                                                                if(_loc27_ || this)
                                                                                                {
                                                                                                   if(!_loc27_)
                                                                                                   {
                                                                                                      continue loop15;
                                                                                                   }
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      _loc6_ = §§pop();
                                                                                                      §§goto(addr384);
                                                                                                   }
                                                                                                   §§goto(addr1080);
                                                                                                }
                                                                                                §§goto(addr839);
                                                                                             },§§goto(addr811))
                                                                                             {
                                                                                                addr654:
                                                                                                if(_loc27_ || this)
                                                                                                {
                                                                                                   addr661:
                                                                                                   if(_loc27_ || _loc3_)
                                                                                                   {
                                                                                                      addr668:
                                                                                                      if(!(_loc28_ && this))
                                                                                                      {
                                                                                                         if(!_loc28_)
                                                                                                         {
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               continue loop17;
                                                                                                            }
                                                                                                            _loc26_ = §§pop();
                                                                                                            loop121:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc28_ && this)
                                                                                                               {
                                                                                                                  break;
                                                                                                                  addr258:
                                                                                                               }
                                                                                                               loop122:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc6_);
                                                                                                                  if(!(_loc28_ && this))
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           §§push(_loc17_);
                                                                                                                           if(_loc27_ || param1)
                                                                                                                           {
                                                                                                                              if(!(_loc28_ && param1))
                                                                                                                              {
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       continue loop11;
                                                                                                                                    }
                                                                                                                                    if(_loc27_ || param1)
                                                                                                                                    {
                                                                                                                                       §§push(_loc25_);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc26_);
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             if(_loc27_ || param2)
                                                                                                                                             {
                                                                                                                                                addr310:
                                                                                                                                                if(!(_loc28_ && _loc3_))
                                                                                                                                                {
                                                                                                                                                   addr318:
                                                                                                                                                   §§push(§§pop() + §§pop());
                                                                                                                                                   if(!_loc28_)
                                                                                                                                                   {
                                                                                                                                                      if(!(_loc28_ && param2))
                                                                                                                                                      {
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc27_)
                                                                                                                                                            {
                                                                                                                                                               addr332:
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               if(!(_loc28_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!(_loc27_ || _loc3_))
                                                                                                                                                                        {
                                                                                                                                                                           continue loop23;
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop120;
                                                                                                                                                                        }
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              continue loop120;
                                                                                                                                                                           }
                                                                                                                                                                           loop65:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              loop66:
                                                                                                                                                                              while(!(_loc28_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 _loc20_ = §§pop();
                                                                                                                                                                                 loop67:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc13_);
                                                                                                                                                                                    loop68:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       loop69:
                                                                                                                                                                                       while(_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          _loc21_ = §§pop();
                                                                                                                                                                                          while(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc14_);
                                                                                                                                                                                             while(_loc27_)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         _loc22_ = §§pop();
                                                                                                                                                                                                         addr865:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr872:
                                                                                                                                                                                                               if(!(_loc27_ || _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(!_loc28_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                                                                  break loop122;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               continue loop19;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr991:
                                                                                                                                                                                                            loop50:
                                                                                                                                                                                                            while(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc28_ && param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  loop51:
                                                                                                                                                                                                                  while(!_loc28_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                     loop52:
                                                                                                                                                                                                                     while(!(_loc28_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc9_);
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           continue loop23;
                                                                                                                                                                                                                           addr505:
                                                                                                                                                                                                                           if(!(_loc27_ || param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              continue;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc20_);
                                                                                                                                                                                                                                 if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr525:
                                                                                                                                                                                                                                    loop117:
                                                                                                                                                                                                                                    while(!_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc22_);
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc27_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                if(!_loc28_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(_loc20_);
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr543:
                                                                                                                                                                                                                                                      loop115:
                                                                                                                                                                                                                                                      while(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc24_);
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc27_ || this)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc27_ || this)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  addr561:
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        loop106:
                                                                                                                                                                                                                                                                        while(!(_loc28_ && this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                           if(!_loc28_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                 if(!_loc28_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr577:
                                                                                                                                                                                                                                                                                    if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          addr587:
                                                                                                                                                                                                                                                                                          §§push(0.5);
                                                                                                                                                                                                                                                                                          loop119:
                                                                                                                                                                                                                                                                                          while(_loc27_ || param1)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr594:
                                                                                                                                                                                                                                                                                             if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc28_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop25;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(_loc20_);
                                                                                                                                                                                                                                                                                                loop110:
                                                                                                                                                                                                                                                                                                while(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr961:
                                                                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            while(!_loc28_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc20_);
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                  addr632:
                                                                                                                                                                                                                                                                                                                  while(!_loc28_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc28_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop68;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr639);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                                                        addr854:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                           addr838:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                              addr839:
                                                                                                                                                                                                                                                                                                                              addr1033:
                                                                                                                                                                                                                                                                                                                              while(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 _loc24_ = §§pop();
                                                                                                                                                                                                                                                                                                                                 break loop121;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 addr1034:
                                                                                                                                                                                                                                                                                                                                 while(!_loc28_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 continue loop27;
                                                                                                                                                                                                                                                                                                                                 §§goto(addr839);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  continue loop52;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               break loop66;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr1004:
                                                                                                                                                                                                                                                                                                            addr628:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            addr962:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                               addr963:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  addr964:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                                     addr965:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc7_);
                                                                                                                                                                                                                                                                                                                        if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc28_ && this)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              break;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        addr920:
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                           addr921:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop65;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1034);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr961:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                                                                         addr721:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc23_);
                                                                                                                                                                                                                                                                                                            addr722:
                                                                                                                                                                                                                                                                                                            loop97:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                               if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr730:
                                                                                                                                                                                                                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr737:
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                     if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        while(_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                              addr749:
                                                                                                                                                                                                                                                                                                                              while(_loc27_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                    addr753:
                                                                                                                                                                                                                                                                                                                                    addr981:
                                                                                                                                                                                                                                                                                                                                    while(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                          addr762:
                                                                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                             addr763:
                                                                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                if(!(_loc27_ || this))
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   break loop110;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                if(_loc28_ && _loc3_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   break loop119;
                                                                                                                                                                                                                                                                                                                                                   addr780:
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                while(_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   addr782:
                                                                                                                                                                                                                                                                                                                                                   if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§push(0.5);
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                                                         break loop110;
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr790:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1004);
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr782);
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                      addr1003:
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr654);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                continue loop69;
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr310);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(_loc11_.x);
                                                                                                                                                                                                                                                                                                                                       addr983:
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                          break loop106;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr987:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                 break loop52;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr737);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop24;
                                                                                                                                                                                                                                                                                                                        addr745:
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr753);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                        break loop97;
                                                                                                                                                                                                                                                                                                                        §§goto(addr730);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     addr950:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr763);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr951:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc12_.y);
                                                                                                                                                                                                                                                                                                               break loop115;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr720:
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr753);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                   break loop119;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(_loc27_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr981);
                                                                                                                                                                                                                                                                                                §§push(_loc7_);
                                                                                                                                                                                                                                                                                                §§goto(addr594);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             continue loop16;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                                                                                                                   break loop117;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr962);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§goto(addr973);
                                                                                                                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr981);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr969:
                                                                                                                                                                                                                                                                                          addr587:
                                                                                                                                                                                                                                                                                          addr792:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                             addr1113:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc11_.y);
                                                                                                                                                                                                                                                                                                addr1095:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc8_);
                                                                                                                                                                                                                                                                                                   addr1096:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                      break loop15;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          addr1112:
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop120;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§goto(addr969);
                                                                                                                                                                                                                                                                                 §§goto(addr577);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr574:
                                                                                                                                                                                                                                                                              addr968:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr587);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc12_.x);
                                                                                                                                                                                                                                                                           addr986:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr987);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr564:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr614);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr561:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                  addr719:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§goto(addr720);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr718:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr762);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(!(_loc28_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr961);
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr986);
                                                                                                                                                                                                                                                      addr543:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr561);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr631);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr983);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr530:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr543);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                             addr811:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                      break loop120;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr989:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   break loop51;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1095);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr810:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       else
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§goto(addr951);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr525:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr564);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr810);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr574);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr989);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc3_ = §§pop();
                                                                                                                                                                                                                     continue loop50;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr924:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§goto(addr1113);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            continue loop28;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1014:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!(_loc28_ && param1))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr968);
                                                                                                                                                                                                               §§push(_loc3_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            break;
                                                                                                                                                                                                            §§goto(addr872);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr1099:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc12_.x);
                                                                                                                                                                                                            addr1080:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop11;
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr668);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr864:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      _loc14_ = §§pop();
                                                                                                                                                                                                      §§goto(addr1099);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr1098:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr964);
                                                                                                                                                                                             }
                                                                                                                                                                                             continue loop66;
                                                                                                                                                                                             while(_loc27_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(_loc27_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop120;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      if(!(_loc27_ || param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue loop26;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§push(0.25);
                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                         if(!(_loc28_ && this))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc24_);
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc27_ || param1)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr717:
                                                                                                                                                                                                                              if(_loc27_ || _loc3_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                 if(!(_loc28_ && this))
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       addr470:
                                                                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc24_);
                                                                                                                                                                                                                                          if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(_loc24_);
                                                                                                                                                                                                                                             if(_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                while(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(_loc27_ || param2)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr505);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr525);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr543);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr722);
                                                                                                                                                                                                                                                addr482:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr546);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr530);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr983);
                                                                                                                                                                                                                                       addr471:
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr543);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr482);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§goto(addr718);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              addr717:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr719);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr752);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr470);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr631);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr721);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr543);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr525);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr587);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr835:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr921);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          continue loop67;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop18;
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 addr1006:
                                                                                                                                                                                 while(_loc27_ || param1)
                                                                                                                                                                                 {
                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                    §§goto(addr1014);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop22;
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr635);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr790);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr628);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr632);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr749);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr471);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr614);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr631);
                                                                                                                                                }
                                                                                                                                                §§goto(addr761);
                                                                                                                                             }
                                                                                                                                             §§goto(addr763);
                                                                                                                                          }
                                                                                                                                          §§goto(addr561);
                                                                                                                                       }
                                                                                                                                       §§goto(addr318);
                                                                                                                                    }
                                                                                                                                    §§goto(addr1096);
                                                                                                                                 }
                                                                                                                                 §§goto(addr748);
                                                                                                                              }
                                                                                                                              §§goto(addr587);
                                                                                                                           }
                                                                                                                           §§goto(addr332);
                                                                                                                        }
                                                                                                                        §§goto(addr1006);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop120;
                                                                                                               }
                                                                                                               while(!_loc28_)
                                                                                                               {
                                                                                                                  §§goto(addr853);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               continue loop13;
                                                                                                               addr384:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                  {
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           if(_loc27_ || param2)
                                                                                                                           {
                                                                                                                              addr402:
                                                                                                                              if(!(_loc28_ && this))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              addr1044:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr1003);
                                                                                                                                 §§goto(addr402);
                                                                                                                              }
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr865);
                                                                                                                           }
                                                                                                                           §§goto(addr991);
                                                                                                                        }
                                                                                                                        §§goto(addr854);
                                                                                                                     }
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop121;
                                                                                                               }
                                                                                                               §§goto(addr821);
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_);
                                                                                                               addr690:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     if(_loc27_ || param1)
                                                                                                                     {
                                                                                                                        §§push(0.25);
                                                                                                                        if(!(_loc28_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc21_);
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc21_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    addr716:
                                                                                                                                    §§goto(addr717);
                                                                                                                                    §§push(_loc23_);
                                                                                                                                 }
                                                                                                                                 §§goto(addr745);
                                                                                                                              }
                                                                                                                              §§goto(addr717);
                                                                                                                           }
                                                                                                                           §§goto(addr716);
                                                                                                                        }
                                                                                                                        §§goto(addr792);
                                                                                                                     }
                                                                                                                     §§goto(addr963);
                                                                                                                  }
                                                                                                                  break;
                                                                                                                  §§goto(addr661);
                                                                                                               }
                                                                                                               §§goto(addr838);
                                                                                                               §§goto(addr680);
                                                                                                            }
                                                                                                            addr680:
                                                                                                         }
                                                                                                         §§goto(addr924);
                                                                                                      }
                                                                                                      §§goto(addr864);
                                                                                                   }
                                                                                                   §§goto(addr690);
                                                                                                }
                                                                                                §§goto(addr780);
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   if(_loc27_)
                                                                                                   {
                                                                                                      _loc25_ = §§pop();
                                                                                                      §§goto(addr821);
                                                                                                   }
                                                                                                   §§goto(addr920);
                                                                                                }
                                                                                                break;
                                                                                                §§goto(addr647);
                                                                                             }
                                                                                             addr647:
                                                                                             §§goto(addr857);
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     addr1111:
                                                                     while(true)
                                                                     {
                                                                        §§goto(addr1112);
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                            continue loop14;
                                                         }
                                                      }
                                                   }
                                                }
                                                break;
                                             }
                                             continue loop12;
                                          }
                                          while(true)
                                          {
                                             §§goto(addr1098);
                                          }
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        §§goto(addr1111);
                     }
                     §§goto(addr835);
                  }
                  §§goto(addr225);
               }
               if(_loc27_ || this)
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc27_ || _loc3_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§_-ze§ = §§pop();
                  if(_loc27_ || this)
                  {
                     §§push(_loc3_);
                     loop124:
                     while(true)
                     {
                        §§push(1);
                        loop125:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop126:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop127:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 loop128:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                    loop129:
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       loop130:
                                       while(true)
                                       {
                                          §§push(_loc4_);
                                          if(_loc27_ || this)
                                          {
                                             if(_loc27_)
                                             {
                                                §§push(1);
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc5_);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop() / §§pop());
                                                      if(_loc27_ || param1)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            addr1224:
                                                            if(!(_loc27_ || _loc3_))
                                                            {
                                                               continue loop129;
                                                            }
                                                            §§push(Number(§§pop()));
                                                         }
                                                         if(!_loc28_)
                                                         {
                                                            _loc4_ = §§pop();
                                                            loop131:
                                                            while(true)
                                                            {
                                                               param1.center.Set(_loc3_,_loc4_);
                                                               while(_loc27_ || this)
                                                               {
                                                                  §§push(param1);
                                                                  §§push(param2);
                                                                  if(_loc27_)
                                                                  {
                                                                     §§push(§§pop() * _loc6_);
                                                                  }
                                                                  §§pop().§_-CG§ = §§pop();
                                                                  if(_loc27_)
                                                                  {
                                                                     if(_loc27_ || _loc3_)
                                                                     {
                                                                        break loop131;
                                                                     }
                                                                     continue loop130;
                                                                  }
                                                               }
                                                            }
                                                            return;
                                                            addr1235:
                                                         }
                                                         break;
                                                      }
                                                      continue loop127;
                                                   }
                                                   continue loop126;
                                                }
                                                continue loop125;
                                             }
                                             continue loop124;
                                          }
                                          §§goto(addr1224);
                                       }
                                       continue loop128;
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr1235);
            }
         }
         while(true)
         {
            §§push(param1.center);
            if(!(_loc28_ && this))
            {
               §§push(0.5);
               if(_loc27_ || _loc3_)
               {
                  if(!_loc27_)
                  {
                     continue;
                  }
                  §§push(§§pop() * (this.§_-09U§[0].y + this.§_-09U§[1].y));
               }
               §§pop().y = §§pop();
               §§goto(addr118);
            }
            §§goto(addr132);
         }
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc27_:Boolean = true;
         var _loc28_:Boolean = false;
         var _loc12_:* = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:* = false;
         var _loc24_:b2MassData = null;
         var _loc25_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§_-bf§(param3.R,param1);
         §§push(param2);
         if(_loc27_)
         {
            §§push(§§pop() - b2Math.§_-r8§(param1,param3.position));
            if(!_loc28_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         var _loc8_:int = 0;
         var _loc9_:* = -1;
         var _loc10_:* = -1;
         var _loc11_:* = false;
         if(_loc27_)
         {
            _loc12_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc12_);
            if(_loc27_)
            {
               §§push(this.§_-OS§);
               if(!_loc28_)
               {
                  loop1:
                  while(true)
                  {
                     if(§§pop() >= §§pop())
                     {
                        if(_loc27_)
                        {
                           addr259:
                           §§push(_loc8_);
                           if(!_loc28_)
                           {
                              addr405:
                              while(true)
                              {
                                 var _loc26_:* = §§pop();
                                 if(_loc27_)
                                 {
                                    §§push(0);
                                    if(!_loc28_)
                                    {
                                       §§push(_loc26_);
                                       if(!(_loc28_ && param2))
                                       {
                                          if(§§pop() === §§pop())
                                          {
                                             if(!_loc28_)
                                             {
                                                §§push(0);
                                                if(!(_loc27_ || this))
                                                {
                                                   addr439:
                                                   if(§§pop() === _loc26_)
                                                   {
                                                      addr441:
                                                      §§push(1);
                                                      if(!(_loc28_ && param2))
                                                      {
                                                         addr449:
                                                      }
                                                   }
                                                   else
                                                   {
                                                      §§push(2);
                                                   }
                                                }
                                             }
                                             §§goto(addr441);
                                          }
                                          else
                                          {
                                             §§push(1);
                                             if(_loc27_ || param2)
                                             {
                                                §§goto(addr439);
                                             }
                                          }
                                          addr474:
                                          if(!_loc28_)
                                          {
                                             switch(§§pop())
                                             {
                                                case 0:
                                                   addr262:
                                                   if(_loc11_)
                                                   {
                                                      if(!(_loc28_ && param3))
                                                      {
                                                         §§goto(addr270);
                                                      }
                                                      addr399:
                                                      addr399:
                                                      break;
                                                   }
                                                   continue;
                                                   addr370:
                                                   break;
                                                case 1:
                                                   addr317:
                                                   §§push(_loc9_);
                                                   if(_loc27_ || param1)
                                                   {
                                                      break loop0;
                                                   }
                                                   _loc9_ = §§pop();
                                                   if(_loc27_)
                                                   {
                                                      §§goto(addr370);
                                                   }
                                                   §§goto(addr399);
                                             }
                                             addr458:
                                             §§push(_loc9_);
                                             if(_loc27_)
                                             {
                                                addr461:
                                                §§push(§§pop() + 1);
                                                if(!(_loc28_ && param1))
                                                {
                                                   addr470:
                                                   §§push(§§pop() % this.§_-OS§);
                                                }
                                                §§push(int(§§pop()));
                                             }
                                          }
                                          var _loc13_:* = §§pop();
                                          §§push(_loc10_);
                                          if(!(_loc28_ && param1))
                                          {
                                             §§push(§§pop() + 1);
                                             if(!(_loc28_ && param1))
                                             {
                                                §§push(§§pop() % this.§_-OS§);
                                             }
                                             §§push(int(§§pop()));
                                          }
                                          var _loc14_:* = §§pop();
                                          §§push(0 - _loc7_[_loc9_]);
                                          if(_loc27_ || param1)
                                          {
                                             §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                             if(_loc27_ || this)
                                             {
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          var _loc15_:* = §§pop();
                                          §§push(0 - _loc7_[_loc10_]);
                                          if(_loc27_)
                                          {
                                             §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                             if(_loc27_)
                                             {
                                                addr553:
                                                §§push(Number(§§pop()));
                                             }
                                             var _loc16_:* = §§pop();
                                             §§push(§§findproperty(b2Vec2));
                                             §§push(this.§_-09U§[_loc9_].x * (1 - _loc15_));
                                             if(!(_loc28_ && this))
                                             {
                                                §§push(this.§_-09U§[_loc13_].x * _loc15_);
                                                if(!_loc28_)
                                                {
                                                   addr582:
                                                   §§push(§§pop() + §§pop());
                                                   §§push(this.§_-09U§[_loc9_].y * (1 - _loc15_));
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop() + this.§_-09U§[_loc13_].y * _loc15_);
                                                   }
                                                }
                                                var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                §§push(§§findproperty(b2Vec2));
                                                §§push(this.§_-09U§[_loc10_].x * (1 - _loc16_));
                                                if(!_loc28_)
                                                {
                                                   §§push(this.§_-09U§[_loc14_].x * _loc16_);
                                                   if(_loc27_ || this)
                                                   {
                                                      §§goto(addr631);
                                                   }
                                                   §§goto(addr647);
                                                }
                                                addr631:
                                                §§push(§§pop() + §§pop());
                                                §§push(this.§_-09U§[_loc10_].y * (1 - _loc16_));
                                                if(!(_loc28_ && param2))
                                                {
                                                   addr647:
                                                   §§push(§§pop() + this.§_-09U§[_loc14_].y * _loc16_);
                                                }
                                                var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                var _loc19_:* = Number(0);
                                                var _loc20_:b2Vec2 = new b2Vec2();
                                                var _loc21_:b2Vec2 = this.§_-09U§[_loc13_];
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc13_);
                                                   if(_loc27_ || param1)
                                                   {
                                                      §§push(int(§§pop()));
                                                      if(_loc27_)
                                                      {
                                                         _loc12_ = §§pop();
                                                         §§goto(addr987);
                                                      }
                                                      addr971:
                                                      if(§§pop() != _loc14_)
                                                      {
                                                         §§push(_loc12_);
                                                         if(_loc27_ || this)
                                                         {
                                                            §§push(1);
                                                            if(_loc27_)
                                                            {
                                                               §§push(§§pop() + §§pop());
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(§§pop() % this.§_-OS§);
                                                                  if(!_loc28_)
                                                                  {
                                                                     addr713:
                                                                     §§push(int(§§pop()));
                                                                     if(_loc27_ || param3)
                                                                     {
                                                                        §§push(§§pop());
                                                                        if(!_loc28_)
                                                                        {
                                                                           addr724:
                                                                           _loc12_ = §§pop();
                                                                           if(!(_loc28_ && this))
                                                                           {
                                                                              addr732:
                                                                              §§push(_loc14_);
                                                                              if(!_loc28_)
                                                                              {
                                                                                 if(§§pop() == §§pop())
                                                                                 {
                                                                                    if(_loc27_ || this)
                                                                                    {
                                                                                       _loc22_ = _loc18_;
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          addr755:
                                                                                          §§push(0.5);
                                                                                          if(_loc27_)
                                                                                          {
                                                                                             §§push(_loc21_.x);
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(_loc17_.x);
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!_loc28_)
                                                                                                   {
                                                                                                      §§push(_loc22_.y);
                                                                                                      if(_loc27_ || param2)
                                                                                                      {
                                                                                                         §§push(_loc17_.y);
                                                                                                         if(!(_loc28_ && param2))
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(!(_loc28_ && param1))
                                                                                                            {
                                                                                                               addr795:
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(_loc27_)
                                                                                                               {
                                                                                                                  addr798:
                                                                                                                  §§push(_loc21_.y);
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     addr802:
                                                                                                                     §§push(_loc17_.y);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           §§push(_loc22_.x);
                                                                                                                           if(!(_loc28_ && param2))
                                                                                                                           {
                                                                                                                              addr818:
                                                                                                                              §§push(§§pop() - _loc17_.x);
                                                                                                                           }
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr818);
                                                                                                                  }
                                                                                                                  §§push(§§pop() - §§pop());
                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                  {
                                                                                                                     addr830:
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     if(!_loc28_)
                                                                                                                     {
                                                                                                                        addr833:
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(_loc27_ || this)
                                                                                                                        {
                                                                                                                           _loc25_ = §§pop();
                                                                                                                           if(_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc19_);
                                                                                                                              if(_loc27_)
                                                                                                                              {
                                                                                                                                 addr950:
                                                                                                                                 §§push(§§pop() + _loc25_);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              _loc19_ = §§pop();
                                                                                                                              addr894:
                                                                                                                              addr966:
                                                                                                                              §§push(_loc20_);
                                                                                                                              §§push(_loc20_.x);
                                                                                                                              if(_loc27_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(_loc25_);
                                                                                                                                 if(!_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_.x);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc21_.x);
                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                       {
                                                                                                                                          addr932:
                                                                                                                                          addr938:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                          {
                                                                                                                                             §§push(_loc22_.x);
                                                                                                                                          }
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             addr935:
                                                                                                                                             §§push(§§pop() / 3);
                                                                                                                                          }
                                                                                                                                          §§pop().x = §§pop() + §§pop();
                                                                                                                                          addr939:
                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                          {
                                                                                                                                             addr946:
                                                                                                                                             §§push(_loc20_);
                                                                                                                                             §§push(_loc20_.y);
                                                                                                                                             if(!(_loc28_ && this))
                                                                                                                                             {
                                                                                                                                                §§push(_loc25_);
                                                                                                                                                if(_loc27_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc17_.y);
                                                                                                                                                   if(!(_loc28_ && param3))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc21_.y);
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr883:
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(_loc27_ || param2)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc22_.y);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr886:
                                                                                                                                                            §§push(§§pop() / 3);
                                                                                                                                                         }
                                                                                                                                                         §§pop().y = §§pop() + §§pop();
                                                                                                                                                         if(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            if(false)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr894);
                                                                                                                                                            }
                                                                                                                                                            _loc21_ = _loc22_;
                                                                                                                                                            §§goto(addr970);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr939);
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr883);
                                                                                                                                                }
                                                                                                                                                §§goto(addr886);
                                                                                                                                             }
                                                                                                                                             §§goto(addr883);
                                                                                                                                             addr946:
                                                                                                                                          }
                                                                                                                                          §§goto(addr966);
                                                                                                                                       }
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                    }
                                                                                                                                    §§goto(addr932);
                                                                                                                                 }
                                                                                                                                 §§goto(addr935);
                                                                                                                              }
                                                                                                                              §§goto(addr938);
                                                                                                                           }
                                                                                                                           §§goto(addr946);
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr950);
                                                                                                               }
                                                                                                               §§goto(addr830);
                                                                                                            }
                                                                                                            §§goto(addr802);
                                                                                                         }
                                                                                                         §§goto(addr818);
                                                                                                      }
                                                                                                      §§goto(addr802);
                                                                                                   }
                                                                                                   §§goto(addr830);
                                                                                                }
                                                                                                §§goto(addr795);
                                                                                             }
                                                                                             §§goto(addr798);
                                                                                          }
                                                                                          §§goto(addr833);
                                                                                       }
                                                                                       §§goto(addr946);
                                                                                    }
                                                                                    §§goto(addr987);
                                                                                 }
                                                                                 _loc22_ = this.§_-09U§[_loc12_];
                                                                                 §§goto(addr755);
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                     §§goto(addr971);
                                                                  }
                                                                  §§goto(addr987);
                                                               }
                                                               §§goto(addr713);
                                                            }
                                                            §§goto(addr724);
                                                         }
                                                         §§goto(addr971);
                                                      }
                                                      if(_loc27_)
                                                      {
                                                         _loc20_.§_-mx§(1 / _loc19_);
                                                         if(_loc27_ || param2)
                                                         {
                                                            §§goto(addr987);
                                                         }
                                                      }
                                                      §§goto(addr987);
                                                   }
                                                   §§goto(addr732);
                                                }
                                                addr987:
                                                if(_loc27_ || param2)
                                                {
                                                   addr970:
                                                   §§push(_loc12_);
                                                }
                                                param4.SetV(b2Math.§_-yP§(param3,_loc20_));
                                                return _loc19_;
                                             }
                                             §§goto(addr582);
                                          }
                                          §§goto(addr553);
                                       }
                                       §§goto(addr439);
                                    }
                                    §§goto(addr449);
                                 }
                                 §§goto(addr441);
                              }
                              addr405:
                           }
                           §§goto(addr461);
                           addr259:
                        }
                        §§goto(addr317);
                     }
                     else
                     {
                        _loc7_[_loc12_] = b2Math.§_-r8§(_loc5_,this.§_-09U§[_loc12_]) - _loc6_;
                        if(!(_loc28_ && param3))
                        {
                           §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                           while(true)
                           {
                              _loc23_ = §§pop();
                              if(_loc27_ || param2)
                              {
                                 §§push(_loc12_);
                                 if(_loc27_)
                                 {
                                    §§push(0);
                                    if(!_loc27_)
                                    {
                                       continue loop1;
                                    }
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc28_)
                                       {
                                          §§push(_loc23_);
                                          if(!_loc28_)
                                          {
                                             if(§§pop())
                                             {
                                                if(!_loc28_)
                                                {
                                                   §§push(_loc11_);
                                                   loop3:
                                                   while(_loc27_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         loop4:
                                                         while(true)
                                                         {
                                                            §§push(_loc12_);
                                                            addr186:
                                                            addr388:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(_loc27_ || param2)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc28_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc27_ || this)
                                                                     {
                                                                        _loc8_++;
                                                                        if(!_loc28_)
                                                                        {
                                                                           continue loop4;
                                                                        }
                                                                        §§goto(addr399);
                                                                     }
                                                                     else
                                                                     {
                                                                        addr342:
                                                                        §§push(this.§_-OS§);
                                                                        if(!(_loc28_ && this))
                                                                        {
                                                                           §§push(§§pop() - 1);
                                                                           if(!(_loc28_ && this))
                                                                           {
                                                                              §§push(int(§§pop()));
                                                                              if(!(_loc27_ || this))
                                                                              {
                                                                                 §§goto(addr405);
                                                                              }
                                                                              §§goto(addr317);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr474);
                                                                     }
                                                                  }
                                                                  §§goto(addr405);
                                                               }
                                                               break;
                                                            }
                                                            §§push(int(§§pop()));
                                                            if(!_loc28_)
                                                            {
                                                               _loc10_ = §§pop();
                                                               if(_loc27_ || param1)
                                                               {
                                                                  §§goto(addr399);
                                                               }
                                                               §§goto(addr458);
                                                            }
                                                            §§goto(addr474);
                                                         }
                                                      }
                                                      while(true)
                                                      {
                                                         addr78:
                                                         loop9:
                                                         while(true)
                                                         {
                                                            §§push(_loc23_);
                                                            if(_loc27_)
                                                            {
                                                               addr82:
                                                               if(_loc27_ || param3)
                                                               {
                                                                  §§push(Boolean(§§pop()));
                                                                  if(!(_loc28_ && param3))
                                                                  {
                                                                     addr97:
                                                                     if(_loc28_)
                                                                     {
                                                                        continue loop3;
                                                                     }
                                                                     _loc11_ = §§pop();
                                                                     if(!_loc28_)
                                                                     {
                                                                        _loc12_++;
                                                                        if(_loc27_ || param3)
                                                                        {
                                                                           if(!_loc28_)
                                                                           {
                                                                              if(true)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue;
                                                                           }
                                                                        }
                                                                        §§goto(addr270);
                                                                     }
                                                                     §§goto(addr342);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               else
                                                               {
                                                                  while(true)
                                                                  {
                                                                     if(!§§pop())
                                                                     {
                                                                        continue loop9;
                                                                     }
                                                                     §§goto(addr82);
                                                                  }
                                                                  addr112:
                                                               }
                                                               while(true)
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc27_ || param2)
                                                                  {
                                                                     if(_loc27_ || param2)
                                                                     {
                                                                        §§push(§§pop() - 1);
                                                                        if(!(_loc28_ && param2))
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           if(!(_loc28_ && param1))
                                                                           {
                                                                              _loc10_ = §§pop();
                                                                              if(_loc27_ || this)
                                                                              {
                                                                                 _loc8_++;
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    continue loop9;
                                                                                 }
                                                                              }
                                                                              §§goto(addr259);
                                                                           }
                                                                           break;
                                                                        }
                                                                        §§goto(addr470);
                                                                     }
                                                                     else
                                                                     {
                                                                        §§goto(addr186);
                                                                     }
                                                                  }
                                                                  break;
                                                               }
                                                               §§goto(addr314);
                                                            }
                                                            §§goto(addr97);
                                                         }
                                                         continue loop0;
                                                      }
                                                   }
                                                   continue;
                                                }
                                                §§goto(addr259);
                                             }
                                             else
                                             {
                                                §§push(_loc11_);
                                             }
                                             §§goto(addr112);
                                          }
                                          §§goto(addr262);
                                       }
                                       §§goto(addr342);
                                    }
                                    §§goto(addr78);
                                 }
                                 §§goto(addr474);
                              }
                              break;
                           }
                           §§goto(addr399);
                        }
                     }
                     addr270:
                     _loc24_ = new b2MassData();
                     if(!_loc28_)
                     {
                        this.ComputeMass(_loc24_,1);
                     }
                     param4.SetV(b2Math.§_-yP§(param3,_loc24_.center));
                     addr305:
                     if(!_loc27_)
                     {
                        §§goto(addr305);
                     }
                     return _loc24_.§_-ze§;
                  }
               }
               §§goto(addr461);
            }
            break;
         }
         while(true)
         {
            §§push(-1);
            if(_loc27_ || param2)
            {
               if(§§pop() == §§pop())
               {
                  if(_loc27_ || param1)
                  {
                     §§goto(addr342);
                  }
                  §§goto(addr458);
               }
               else
               {
                  §§push(this.§_-OS§);
                  if(_loc27_ || param1)
                  {
                     §§push(§§pop() - 1);
                     if(!(_loc28_ && param3))
                     {
                        §§goto(addr388);
                     }
                     §§goto(addr470);
                  }
               }
               §§goto(addr474);
            }
            §§goto(addr461);
            §§goto(addr317);
         }
      }
      
      public function §_-y3§() : int
      {
         return this.§_-OS§;
      }
      
      public function §_-Y2§() : Vector.<b2Vec2>
      {
         return this.§_-09U§;
      }
      
      public function §_-04f§() : Vector.<b2Vec2>
      {
         return this.§_-EH§;
      }
      
      public function §_-02l§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§_-09U§[0].x * param1.x);
         if(_loc6_ || _loc3_)
         {
            §§push(§§pop() + this.§_-09U§[0].y * param1.y);
            if(_loc6_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         loop0:
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc7_ && _loc3_))
            {
               if(§§pop() >= this.§_-OS§)
               {
                  if(_loc6_ || _loc3_)
                  {
                     if(_loc6_)
                     {
                        addr78:
                        §§push(_loc2_);
                        if(_loc6_)
                        {
                           break;
                        }
                        loop9:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(!(_loc7_ && _loc2_))
                              {
                                 §§push(Number(§§pop()));
                              }
                              if(_loc7_ && _loc3_)
                              {
                                 break;
                              }
                              addr127:
                              if(!(_loc7_ && _loc2_))
                              {
                                 _loc3_ = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    addr95:
                                    while(true)
                                    {
                                       if(_loc6_ || this)
                                       {
                                          continue loop3;
                                       }
                                       continue loop4;
                                    }
                                 }
                                 addr135:
                              }
                              else
                              {
                                 while(true)
                                 {
                                    §§push(§§pop());
                                    if(_loc6_)
                                    {
                                       _loc5_ = §§pop();
                                       break loop3;
                                    }
                                    addr187:
                                    while(true)
                                    {
                                       if(§§pop() > §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!(_loc7_ && _loc2_))
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             continue loop9;
                                          }
                                          addr188:
                                       }
                                    }
                                    §§goto(addr127);
                                 }
                                 addr182:
                              }
                              while(true)
                              {
                                 _loc4_++;
                                 §§goto(addr95);
                                 §§goto(addr135);
                              }
                              continue loop0;
                           }
                           addr186:
                           while(true)
                           {
                              §§goto(addr187);
                           }
                        }
                     }
                     §§goto(addr188);
                  }
                  §§goto(addr95);
               }
               else
               {
                  §§push(this.§_-09U§[_loc4_].x * param1.x);
                  if(!(_loc7_ && _loc2_))
                  {
                     §§push(this.§_-09U§[_loc4_].y * param1.y);
                     if(!_loc7_)
                     {
                        §§push(§§pop() + §§pop());
                        if(_loc6_ || param1)
                        {
                           §§push(Number(§§pop()));
                        }
                        §§goto(addr182);
                     }
                     §§goto(addr187);
                  }
               }
               §§goto(addr186);
            }
            §§goto(addr78);
         }
         return §§pop();
      }
      
      public function §_-01c§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§_-09U§[0].x * param1.x);
         if(_loc7_ || param1)
         {
            §§push(§§pop() + this.§_-09U§[0].y * param1.y);
            if(_loc7_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc3_:* = §§pop();
         var _loc4_:int = 1;
         while(true)
         {
            §§push(_loc4_);
            if(!(_loc6_ && param1))
            {
               if(§§pop() >= this.§_-OS§)
               {
                  if(_loc7_ || _loc3_)
                  {
                     break;
                  }
                  loop1:
                  for(; _loc6_; while(true)
                  {
                     _loc4_++;
                     continue loop1;
                  })
                  {
                     loop2:
                     while(true)
                     {
                        if(!(_loc7_ || this))
                        {
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 if(!(_loc6_ && _loc3_))
                                 {
                                    addr105:
                                    §§push(Number(§§pop()));
                                    if(!_loc6_)
                                    {
                                       if(!(_loc6_ && this))
                                       {
                                          _loc3_ = §§pop();
                                          continue loop2;
                                       }
                                       addr133:
                                       while(true)
                                       {
                                          §§push(this.§_-09U§[_loc4_].y * param1.y);
                                          if(_loc7_ || _loc2_)
                                          {
                                             §§push(§§pop() + §§pop());
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                if(!_loc6_)
                                                {
                                                   §§push(§§pop());
                                                   if(!_loc6_)
                                                   {
                                                      _loc5_ = §§pop();
                                                      addr166:
                                                      while(true)
                                                      {
                                                         §§push(_loc3_);
                                                      }
                                                      addr166:
                                                   }
                                                }
                                                §§goto(addr166);
                                             }
                                             addr159:
                                          }
                                          while(true)
                                          {
                                             if(§§pop() <= §§pop())
                                             {
                                                break loop3;
                                             }
                                             if(!_loc7_)
                                             {
                                                continue loop3;
                                             }
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                addr174:
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop3;
                                                }
                                                addr174:
                                             }
                                             §§goto(addr174);
                                          }
                                       }
                                    }
                                    §§goto(addr166);
                                 }
                                 §§goto(addr159);
                              }
                              §§goto(addr105);
                           }
                        }
                        continue loop1;
                     }
                  }
                  continue;
               }
               §§push(this.§_-09U§[_loc4_].x * param1.x);
               §§goto(addr133);
            }
            §§goto(addr174);
         }
         return this.§_-09U§[_loc2_];
      }
      
      private function §_-0DA§() : Boolean
      {
         return false;
      }
      
      private function §_-Md§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§_-09U§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(_loc4_)
               {
                  if(_loc4_)
                  {
                     break;
                  }
                  loop1:
                  while(!(_loc4_ || this))
                  {
                     while(true)
                     {
                        this.§_-EH§[_loc2_] = new b2Vec2();
                        continue loop1;
                     }
                  }
                  _loc2_++;
               }
               continue;
            }
            this.§_-09U§[_loc2_] = new b2Vec2();
            §§goto(addr80);
         }
      }
   }
}
