package §-!C§
{
   import § G§.*;
   import §&!"§.*;
   import §9"§.*;
   import §>!@§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §+!@§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(!_loc2_)
         {
            §+!@§ = new b2Mat22();
         }
      }
      
      b2internal var §9!Z§:b2Vec2;
      
      b2internal var §3!S§:Vector.<b2Vec2>;
      
      b2internal var §0!'§:Vector.<b2Vec2>;
      
      b2internal var §^L§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            super();
            while(true)
            {
               §3c§ = b2internal::;!5;
            }
            addr105:
         }
         loop1:
         while(true)
         {
            this.§9!Z§ = new b2Vec2();
            loop2:
            while(true)
            {
               this.§3!S§ = new Vector.<b2Vec2>();
               addr79:
               while(_loc1_)
               {
                  this.§0!'§ = new Vector.<b2Vec2>();
                  continue loop2;
               }
               continue loop1;
            }
         }
      }
      
      public static function §-3§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && param1))
         {
            _loc3_.§1#§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function § !5§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§5=§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §,b§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && param1))
         {
            _loc3_.§?E§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function include(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§-2§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §+J§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc5_)
         {
            _loc3_.§!;§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §@q§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = true;
         var _loc18_:Boolean = false;
         var _loc3_:b2Vec2 = null;
         var _loc9_:b2Vec2 = null;
         var _loc10_:b2Vec2 = null;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         _loc3_ = new b2Vec2();
         §§push(0);
         if(!(_loc18_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!_loc18_)
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
         if(_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         loop0:
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(_loc17_ || b2PolygonShape)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(_loc17_)
               {
                  §§push(_loc9_.x);
                  loop1:
                  while(true)
                  {
                     §§push(_loc5_);
                     loop2:
                     while(true)
                     {
                        §§push(§§pop() - §§pop());
                        loop3:
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
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    loop7:
                                    while(true)
                                    {
                                       §§push(§§pop() - §§pop());
                                       loop8:
                                       while(true)
                                       {
                                          §§push(Number(§§pop()));
                                          loop9:
                                          while(true)
                                          {
                                             _loc12_ = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                loop11:
                                                while(!(_loc18_ && param1))
                                                {
                                                   §§push(_loc5_);
                                                   loop12:
                                                   while(_loc17_)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop14:
                                                         while(_loc17_)
                                                         {
                                                            _loc13_ = §§pop();
                                                            loop15:
                                                            while(true)
                                                            {
                                                               §§push(_loc10_.y);
                                                               loop16:
                                                               for(; !_loc18_; while(true)
                                                               {
                                                                  if(_loc17_ || param1)
                                                                  {
                                                                     continue loop11;
                                                                  }
                                                                  continue loop16;
                                                               },continue loop11)
                                                               {
                                                                  §§push(_loc6_);
                                                                  loop17:
                                                                  while(!_loc18_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     loop18:
                                                                     while(!(_loc18_ && param2))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        while(true)
                                                                        {
                                                                           _loc14_ = §§pop();
                                                                           addr330:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc11_);
                                                                              continue loop16;
                                                                           }
                                                                        }
                                                                        addr253:
                                                                        if(!(_loc18_ && _loc3_))
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop29:
                                                                           while(!_loc18_)
                                                                           {
                                                                              _loc16_ = §§pop();
                                                                              loop30:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc4_);
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(!_loc18_)
                                                                                    {
                                                                                       addr181:
                                                                                       §§push(_loc16_);
                                                                                       if(!(_loc18_ && param2))
                                                                                       {
                                                                                          addr297:
                                                                                          if(_loc17_)
                                                                                          {
                                                                                             if(!_loc17_)
                                                                                             {
                                                                                                continue loop17;
                                                                                             }
                                                                                             §§push(§§pop() + §§pop());
                                                                                             if(_loc17_ || param1)
                                                                                             {
                                                                                                addr211:
                                                                                                if(_loc17_)
                                                                                                {
                                                                                                   addr214:
                                                                                                   §§push(Number(§§pop()));
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      addr216:
                                                                                                      if(_loc18_ && _loc3_)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      _loc4_ = §§pop();
                                                                                                      loop31:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            continue loop30;
                                                                                                         }
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         _loc3_.§`!§(new b2Vec2(_loc5_,_loc6_));
                                                                                                         loop32:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc3_.§`!§(_loc9_);
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc3_.§`!§(_loc10_);
                                                                                                               loop34:
                                                                                                               for(; _loc17_; for(; _loc17_ || b2PolygonShape; _loc8_++,if(!(_loc17_ || _loc3_))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               },§§goto(addr122))
                                                                                                               {
                                                                                                                  if(!_loc17_)
                                                                                                                  {
                                                                                                                     continue loop33;
                                                                                                                  }
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     continue loop32;
                                                                                                                  }
                                                                                                                  if(_loc18_)
                                                                                                                  {
                                                                                                                     continue loop31;
                                                                                                                  }
                                                                                                                  if(!_loc18_)
                                                                                                                  {
                                                                                                                     if(!(_loc18_ && _loc3_))
                                                                                                                     {
                                                                                                                        continue;
                                                                                                                     }
                                                                                                                     §§goto(addr330);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0.5);
                                                                                                                        break loop30;
                                                                                                                     }
                                                                                                                     addr311:
                                                                                                                  }
                                                                                                               })
                                                                                                               {
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     do
                                                                                                                     {
                                                                                                                        §§push(_loc3_);
                                                                                                                        §§push(_loc16_);
                                                                                                                        if(!_loc18_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * _loc7_);
                                                                                                                        }
                                                                                                                        §§pop().§?Q§(§§pop());
                                                                                                                        continue loop34;
                                                                                                                     }
                                                                                                                     while(false);
                                                                                                                     
                                                                                                                     continue loop0;
                                                                                                                  }
                                                                                                               }
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop5;
                                                                                                   }
                                                                                                   continue loop29;
                                                                                                }
                                                                                                §§goto(addr329);
                                                                                                §§goto(addr330);
                                                                                             }
                                                                                             §§goto(addr214);
                                                                                          }
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                if(!(_loc17_ || param2))
                                                                                                {
                                                                                                   break;
                                                                                                }
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                             addr308:
                                                                                             while(!_loc18_)
                                                                                             {
                                                                                                _loc15_ = §§pop();
                                                                                                §§goto(addr311);
                                                                                             }
                                                                                             continue loop1;
                                                                                          }
                                                                                          continue loop8;
                                                                                          addr297:
                                                                                       }
                                                                                       while(!(_loc18_ && _loc3_))
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          §§goto(addr181);
                                                                                       }
                                                                                       continue loop2;
                                                                                       addr238:
                                                                                    }
                                                                                    loop28:
                                                                                    while(true)
                                                                                    {
                                                                                       if(_loc18_ && param1)
                                                                                       {
                                                                                          while(!(_loc18_ && _loc3_))
                                                                                          {
                                                                                             §§push(_loc12_);
                                                                                             if(!_loc18_)
                                                                                             {
                                                                                                §§push(§§pop() * _loc13_);
                                                                                             }
                                                                                             §§goto(addr297);
                                                                                             continue loop28;
                                                                                          }
                                                                                          continue loop9;
                                                                                          addr285:
                                                                                       }
                                                                                       §§goto(addr253);
                                                                                    }
                                                                                    continue loop18;
                                                                                 }
                                                                                 §§goto(addr211);
                                                                              }
                                                                              while(true)
                                                                              {
                                                                                 if(_loc17_)
                                                                                 {
                                                                                    if(!_loc17_)
                                                                                    {
                                                                                       break;
                                                                                    }
                                                                                    §§goto(addr238);
                                                                                    §§push(_loc15_);
                                                                                 }
                                                                                 §§goto(addr308);
                                                                                 §§goto(addr216);
                                                                              }
                                                                              continue loop4;
                                                                           }
                                                                           continue loop16;
                                                                        }
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  continue loop12;
                                                               }
                                                               continue loop13;
                                                            }
                                                         }
                                                         continue loop6;
                                                      }
                                                   }
                                                   continue loop7;
                                                   if(!(_loc17_ || _loc3_))
                                                   {
                                                      continue;
                                                   }
                                                   §§push(_loc14_);
                                                   if(!_loc18_)
                                                   {
                                                      §§goto(addr285);
                                                      §§push(§§pop() * §§pop());
                                                   }
                                                   §§goto(addr297);
                                                }
                                                continue loop3;
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
               §§goto(addr161);
            }
            §§goto(addr95);
         }
         if(_loc17_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc18_ && b2PolygonShape))
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!(_loc18_ && _loc3_))
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc18_ && param2))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
         }
         return _loc3_;
      }
      
      b2internal static function §!n§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(!(_loc27_ && b2PolygonShape))
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(_loc26_)
               {
                  if(!_loc26_)
                  {
                     continue;
                  }
                  _loc5_[param3] = _loc5_[0];
               }
               if(_loc26_)
               {
                  if(true)
                  {
                     break;
                  }
               }
               else
               {
                  addr105:
               }
               _loc4_++;
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr105);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(_loc26_ || b2PolygonShape)
         {
            §§push(1);
            if(!(_loc27_ && param1))
            {
               _loc4_ = §§pop();
               if(!_loc27_)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr1197:
               }
               §§goto(addr1200);
            }
            loop2:
            for(; §§pop() <= param3; §§goto(addr1197))
            {
               _loc7_ = _loc5_[int(_loc4_ - 1)];
               if(_loc26_ || param3)
               {
                  §§push(_loc5_[_loc4_].x - _loc7_.x);
                  loop3:
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop4:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        loop5:
                        while(true)
                        {
                           §§push(_loc5_[_loc4_].y - _loc7_.y);
                           loop6:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop7:
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop8:
                                 while(true)
                                 {
                                    §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                    loop9:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       loop10:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          loop11:
                                          while(!_loc27_)
                                          {
                                             §§push(_loc10_);
                                             loop12:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                loop13:
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   loop14:
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop15:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         loop16:
                                                         while(true)
                                                         {
                                                            §§push(_loc10_);
                                                            loop17:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               loop18:
                                                               while(true)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop19:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     loop20:
                                                                     while(true)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        loop21:
                                                                        while(true)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           loop22:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop23:
                                                                              while(!(_loc27_ && param1))
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 loop24:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    loop25:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop26:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc12_ = §§pop();
                                                                                          loop27:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(Number.MAX_VALUE));
                                                                                             loop28:
                                                                                             while(true)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                loop29:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(Number.MAX_VALUE));
                                                                                                   loop30:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc14_ = §§pop();
                                                                                                      loop31:
                                                                                                      while(_loc26_ || param2)
                                                                                                      {
                                                                                                         §§push(-Number.MAX_VALUE);
                                                                                                         loop32:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            loop33:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               _loc15_ = §§pop();
                                                                                                               loop34:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(-Number.MAX_VALUE);
                                                                                                                  loop35:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop36:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        _loc16_ = §§pop();
                                                                                                                        loop37:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(0);
                                                                                                                           loop38:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              _loc17_ = §§pop();
                                                                                                                              loop39:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 loop40:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc17_);
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    if(§§pop() >= param3)
                                                                                                                                    {
                                                                                                                                       loop41:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc15_);
                                                                                                                                          if(!(_loc27_ && b2PolygonShape))
                                                                                                                                          {
                                                                                                                                             if(!_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc13_);
                                                                                                                                                if(_loc26_ || param2)
                                                                                                                                                {
                                                                                                                                                   if(_loc26_ || b2PolygonShape)
                                                                                                                                                   {
                                                                                                                                                      if(_loc27_ && b2PolygonShape)
                                                                                                                                                      {
                                                                                                                                                         continue loop12;
                                                                                                                                                      }
                                                                                                                                                      §§push(§§pop() - §§pop());
                                                                                                                                                      loop42:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                            {
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop14;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc14_);
                                                                                                                                                                     loop43:
                                                                                                                                                                     while(_loc26_ || param3)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                                                                        loop44:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                              if(!(_loc27_ && param1))
                                                                                                                                                                              {
                                                                                                                                                                                 addr554:
                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                 loop49:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc26_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       addr559:
                                                                                                                                                                                       _loc18_ = §§pop();
                                                                                                                                                                                       if(!(_loc27_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(0.95);
                                                                                                                                                                                             loop46:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(_loc6_);
                                                                                                                                                                                                loop47:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                   loop48:
                                                                                                                                                                                                   while(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(§§pop() < §§pop())
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               continue loop2;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(!(_loc27_ && param3))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc27_ && param3))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                  loop69:
                                                                                                                                                                                                                  while(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc26_ || param2)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!(_loc26_ || param3))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           continue loop22;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                        loop50:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           _loc6_ = §§pop();
                                                                                                                                                                                                                           loop51:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(param1.R);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop().col1);
                                                                                                                                                                                                                                 loop53:
                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc8_);
                                                                                                                                                                                                                                    loop54:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().x = §§pop();
                                                                                                                                                                                                                                       addr464:
                                                                                                                                                                                                                                       while(_loc26_ || param1)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(param1.R);
                                                                                                                                                                                                                                          loop56:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop().col1);
                                                                                                                                                                                                                                             if(!(_loc26_ || param3))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                             if(_loc26_ || param3)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                                                                while(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(param1.R);
                                                                                                                                                                                                                                                      loop58:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop().col2);
                                                                                                                                                                                                                                                         addr411:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                                                                            addr412:
                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                                                                               addr413:
                                                                                                                                                                                                                                                               addr668:
                                                                                                                                                                                                                                                               while(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc27_ && param3)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop31;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§push(param1.R);
                                                                                                                                                                                                                                                                  if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop56;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop58;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr987:
                                                                                                                                                                                                                                                                  _loc25_ = §§pop();
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     addr1160:
                                                                                                                                                                                                                                                                     §§push(param1.center);
                                                                                                                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                                                                                                                     §§push(_loc25_.col1.x);
                                                                                                                                                                                                                                                                     if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr1193:
                                                                                                                                                                                                                                                                        addr1169:
                                                                                                                                                                                                                                                                        addr1194:
                                                                                                                                                                                                                                                                        §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                                                                        if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           addr1181:
                                                                                                                                                                                                                                                                           §§push(§§pop() + _loc25_.col2.x * _loc24_);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                                                                        addr1195:
                                                                                                                                                                                                                                                                        §§push(param1.center);
                                                                                                                                                                                                                                                                        if(_loc26_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc7_.y);
                                                                                                                                                                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc25_.col1);
                                                                                                                                                                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop().y);
                                                                                                                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc23_);
                                                                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc25_.col2);
                                                                                                                                                                                                                                                                                                            if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                               if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                  if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     addr1145:
                                                                                                                                                                                                                                                                                                                     §§pop().y = §§pop() + (§§pop() + §§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                     addr1146:
                                                                                                                                                                                                                                                                                                                     if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        addr1036:
                                                                                                                                                                                                                                                                                                                        addr1046:
                                                                                                                                                                                                                                                                                                                        addr1039:
                                                                                                                                                                                                                                                                                                                        §§push(param1.§1J§);
                                                                                                                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           addr1044:
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() * (_loc15_ - _loc13_));
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                                        addr1047:
                                                                                                                                                                                                                                                                                                                        §§push(param1.§1J§);
                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(0.5);
                                                                                                                                                                                                                                                                                                                           if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(_loc26_ || param3)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                          if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             addr1029:
                                                                                                                                                                                                                                                                                                                                             §§pop().y = §§pop() * (§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                             addr1028:
                                                                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   if(false)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      §§goto(addr1036);
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   addr1196:
                                                                                                                                                                                                                                                                                                                                                   _loc4_++;
                                                                                                                                                                                                                                                                                                                                                   continue loop2;
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1146);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1047);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1044);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1028);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1046);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1029);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§goto(addr1039);
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1195);
                                                                                                                                                                                                                                                                                                                     addr1143:
                                                                                                                                                                                                                                                                                                                     addr1144:
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1181);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1143);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1181);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1193);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1144);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr1169);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr1181);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr1146);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr1160);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1194);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr1145);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr1160);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr1181);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1193);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr668:
                                                                                                                                                                                                                                                               while(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc17_++;
                                                                                                                                                                                                                                                                     continue loop40;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  loop109:
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc22_);
                                                                                                                                                                                                                                                                     addr636:
                                                                                                                                                                                                                                                                     addr793:
                                                                                                                                                                                                                                                                     while(_loc26_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc16_);
                                                                                                                                                                                                                                                                        break loop48;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc27_ && param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop3;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                           if(_loc26_ || param3)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc9_);
                                                                                                                                                                                                                                                                              continue loop12;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr825:
                                                                                                                                                                                                                                                                           addr825:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop11;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              _loc21_ = §§pop();
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc11_);
                                                                                                                                                                                                                                                                                 addr769:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc26_ || param3))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       addr780:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc12_);
                                                                                                                                                                                                                                                                                          addr781:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc20_);
                                                                                                                                                                                                                                                                                             break loop43;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr712:
                                                                                                                                                                                                                                                                           loop99:
                                                                                                                                                                                                                                                                           while(_loc26_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop2;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop37;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc22_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                    break loop42;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc21_);
                                                                                                                                                                                                                                                                                 addr678:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_ && param1)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop19;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§push(_loc15_);
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(§§pop() <= §§pop())
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             continue loop109;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop32;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             addr700:
                                                                                                                                                                                                                                                                                             while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                continue loop109;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr780);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr764:
                                                                                                                                                                                                                                                                                    loop94:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       addr765:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                          addr766:
                                                                                                                                                                                                                                                                                          loop96:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr709:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(_loc22_);
                                                                                                                                                                                                                                                                                                addr711:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop99;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                continue loop96;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop94;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr636);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr668);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop50;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(_loc26_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop39;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop10;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr676);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr766);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                continue loop51;
                                                                                                                                                                                                                                                addr448:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop54;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop53;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop8;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc27_ && param2)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§push(§§pop().col2);
                                                                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc12_);
                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§pop().y = §§pop();
                                                                                                                                                                                                                                       loop62:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc26_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!(_loc26_ || param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             loop63:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                                                                if(!_loc27_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                                                                                                                      while(!(_loc27_ && param1))
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                                                                                                                         while(_loc26_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                            while(!(_loc27_ && param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                               while(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              addr321:
                                                                                                                                                                                                                                                                              §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop69;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       _loc23_ = §§pop();
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop2;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc27_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop62;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop41;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr413);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr725);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr700);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop69;
                                                                                                                                                                                                                                                                              addr321:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           continue loop16;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop21;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop36;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr769);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr711);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr781);
                                                                                                                                                                                                                                                            §§push(_loc16_);
                                                                                                                                                                                                                                                            if(_loc26_ || param3)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc26_ || param1))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop43;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(_loc26_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr201);
                                                                                                                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                     addr821:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop17;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr825);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr820:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr825);
                                                                                                                                                                                                                                                               continue loop43;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop47;
                                                                                                                                                                                                                                                         if(_loc27_ && param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop48;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc27_ && param3)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop46;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop49;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop44;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                         if(_loc26_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            addr229:
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr232:
                                                                                                                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                                                                                                                               if(_loc27_ && param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop50;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!(_loc27_ && param3))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     _loc24_ = §§pop();
                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop2;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop40;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     if(!_loc27_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop63;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr694);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr678);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr636);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§goto(addr300);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr232);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr712);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop25;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      _loc20_ = §§pop();
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(_loc27_ && b2PolygonShape)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop5;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr793);
                                                                                                                                                                                                                                                         §§push(_loc8_);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   addr852:
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr321);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop34;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr448);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr464);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr412);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr411);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr825);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop30;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop6;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     _loc22_ = §§pop();
                                                                                                                                                                                                                     loop91:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc21_);
                                                                                                                                                                                                                        addr750:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc13_);
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc26_ || param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       continue loop2;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    if(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       break;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr764);
                                                                                                                                                                                                                                    §§push(_loc21_);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr709);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop91;
                                                                                                                                                                                                                              addr753:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           continue loop35;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr785:
                                                                                                                                                                                                                  addr607:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr828);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc26_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop29;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop24;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§push(_loc22_);
                                                                                                                                                                                                               if(_loc26_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc26_ || param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop26;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     _loc16_ = §§pop();
                                                                                                                                                                                                                     §§goto(addr668);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr667:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr667);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr1196);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr784:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr785);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(§§pop() > §§pop())
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr647);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr631);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr779);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr559);
                                                                                                                                                                                          }
                                                                                                                                                                                          addr567:
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr629);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr753);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop20;
                                                                                                                                                                                 addr555:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr567);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr554);
                                                                                                                                                                        }
                                                                                                                                                                        continue loop28;
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr783);
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr541);
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr824);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr784);
                                                                                                                                                         }
                                                                                                                                                         break;
                                                                                                                                                         addr155:
                                                                                                                                                         if(_loc27_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue;
                                                                                                                                                         }
                                                                                                                                                         if(_loc26_ || b2PolygonShape)
                                                                                                                                                         {
                                                                                                                                                            if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                               if(!_loc27_)
                                                                                                                                                               {
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr183);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr693);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr292);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr201);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr750);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr765);
                                                                                                                                                      }
                                                                                                                                                      loop101:
                                                                                                                                                      while(!(_loc27_ && param3))
                                                                                                                                                      {
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  continue loop2;
                                                                                                                                                               }
                                                                                                                                                               if(!_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc5_[_loc17_].y - _loc7_.y);
                                                                                                                                                                  break loop101;
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            continue loop15;
                                                                                                                                                            addr876:
                                                                                                                                                         }
                                                                                                                                                         _loc14_ = §§pop();
                                                                                                                                                         §§goto(addr736);
                                                                                                                                                      }
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         if(_loc27_ && param1)
                                                                                                                                                         {
                                                                                                                                                            continue loop23;
                                                                                                                                                         }
                                                                                                                                                         if(!(_loc26_ || param1))
                                                                                                                                                         {
                                                                                                                                                            continue loop18;
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr852);
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         §§goto(addr726);
                                                                                                                                                      }
                                                                                                                                                      addr726:
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr821);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr824);
                                                                                                                                                }
                                                                                                                                                §§goto(addr555);
                                                                                                                                             }
                                                                                                                                             §§goto(addr667);
                                                                                                                                          }
                                                                                                                                          §§goto(addr607);
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr876);
                                                                                                                                 }
                                                                                                                                 continue loop38;
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              continue loop4;
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
                                          continue loop7;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr881);
            }
         }
         addr1200:
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(!_loc2_)
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
         if(_loc5_ || param1)
         {
            super.Set(param1);
            if(!_loc4_)
            {
               §§goto(addr34);
            }
            §§goto(addr38);
         }
         addr34:
         if(param1 is b2PolygonShape)
         {
            addr38:
            _loc2_ = param1 as b2PolygonShape;
            if(_loc5_)
            {
               this.§9!Z§.SetV(_loc2_.§9!Z§);
               while(true)
               {
                  this.§^L§ = _loc2_.§^L§;
                  addr110:
                  if(_loc4_ && param1)
                  {
                     continue;
                  }
                  while(true)
                  {
                     if(_loc3_ < this.§^L§)
                     {
                        this.§3!S§[_loc3_].SetV(_loc2_.§3!S§[_loc3_]);
                        loop4:
                        while(true)
                        {
                           addr64:
                           while(true)
                           {
                              this.§0!'§[_loc3_].SetV(_loc2_.§0!'§[_loc3_]);
                              if(!(_loc5_ || this))
                              {
                                 break;
                              }
                              _loc3_++;
                              if(_loc4_ && param1)
                              {
                                 break;
                              }
                              continue loop4;
                           }
                        }
                     }
                     §§goto(addr152);
                  }
                  addr117:
               }
            }
            while(true)
            {
               this.§2&§(this.§^L§);
               while(_loc5_)
               {
                  _loc3_ = 0;
                  if(_loc4_)
                  {
                     continue;
                  }
                  §§goto(addr110);
               }
            }
            §§goto(addr117);
         }
         addr152:
      }
      
      public function §1#§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(!(_loc7_ && param2))
            {
               _loc3_.push(_loc4_);
            }
         }
         if(!_loc7_)
         {
            this.§5=§(_loc3_,param2);
         }
      }
      
      public function §5=§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:int = 0;
         var _loc6_:b2Vec2 = null;
         if(!_loc7_)
         {
            §§push(param2);
            if(_loc8_ || _loc3_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr216:
                     while(true)
                     {
                        param2 = §§pop();
                        addr217:
                        while(true)
                        {
                        }
                     }
                  }
                  addr213:
               }
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  loop2:
                  while(true)
                  {
                     if(_loc8_)
                     {
                        while(true)
                        {
                           this.§^L§ = param2;
                           while(_loc8_)
                           {
                              if(!(_loc8_ || param1))
                              {
                                 break loop2;
                              }
                              this.§2&§(param2);
                              while(_loc8_)
                              {
                                 _loc3_ = 0;
                                 if(_loc7_ && this)
                                 {
                                    continue;
                                 }
                                 loop8:
                                 while(true)
                                 {
                                    §§push(_loc3_);
                                    loop9:
                                    while(true)
                                    {
                                       §§push(this.§^L§);
                                       if(!_loc7_)
                                       {
                                          if(§§pop() >= §§pop())
                                          {
                                             loop10:
                                             while(true)
                                             {
                                                if(!_loc7_)
                                                {
                                                   §§push(0);
                                                   loop11:
                                                   while(true)
                                                   {
                                                      _loc3_ = §§pop();
                                                      if(!_loc7_)
                                                      {
                                                         while(true)
                                                         {
                                                            while(true)
                                                            {
                                                               §§push(_loc3_);
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(this.§^L§);
                                                                  addr282:
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     if(§§pop() >= §§pop())
                                                                     {
                                                                        if(!_loc7_)
                                                                        {
                                                                           break;
                                                                        }
                                                                        break loop11;
                                                                     }
                                                                     §§push(_loc3_);
                                                                     if(!_loc7_)
                                                                     {
                                                                        if(_loc8_)
                                                                        {
                                                                           §§push(int(§§pop()));
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              if(!(_loc8_ || _loc3_))
                                                                              {
                                                                                 break loop15;
                                                                              }
                                                                              if(!_loc8_)
                                                                              {
                                                                                 continue loop10;
                                                                              }
                                                                              §§push(_loc3_);
                                                                              if(_loc8_ || this)
                                                                              {
                                                                                 §§push(1);
                                                                                 if(!(_loc7_ && param2))
                                                                                 {
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(_loc8_)
                                                                                    {
                                                                                       if(§§pop() < this.§^L§)
                                                                                       {
                                                                                          if(!(_loc8_ || this))
                                                                                          {
                                                                                             break loop11;
                                                                                          }
                                                                                          §§push(_loc3_);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                          addr63:
                                                                                          §§push(1);
                                                                                          if(_loc7_ && param2)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          addr72:
                                                                                          §§push(int(§§pop() + §§pop()));
                                                                                          if(_loc7_ && param1)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       else
                                                                                       {
                                                                                          §§push(0);
                                                                                          if(!_loc8_)
                                                                                          {
                                                                                             continue;
                                                                                          }
                                                                                       }
                                                                                       §§push(int(§§pop()));
                                                                                       if(_loc8_)
                                                                                       {
                                                                                          continue;
                                                                                       }
                                                                                       continue loop14;
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr72);
                                                                              }
                                                                              §§goto(addr63);
                                                                           }
                                                                           continue;
                                                                        }
                                                                        continue loop9;
                                                                     }
                                                                     continue loop14;
                                                                  }
                                                                  this.§9!Z§ = §@q§(this.§3!S§,this.§^L§);
                                                                  break loop11;
                                                               }
                                                            }
                                                         }
                                                      }
                                                      break;
                                                   }
                                                }
                                                else
                                                {
                                                   _loc3_++;
                                                   if(_loc8_)
                                                   {
                                                      continue loop8;
                                                   }
                                                   addr161:
                                                }
                                                return;
                                             }
                                          }
                                          else
                                          {
                                             this.§3!S§[_loc3_].SetV(param1[_loc3_]);
                                          }
                                          §§goto(addr161);
                                       }
                                       §§goto(addr282);
                                    }
                                 }
                              }
                           }
                           continue loop2;
                        }
                        addr202:
                     }
                     else
                     {
                        §§goto(addr213);
                     }
                  }
                  §§goto(addr217);
               }
            }
            §§goto(addr216);
         }
         §§goto(addr202);
      }
      
      public function §?E§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || _loc3_)
         {
            this.§^L§ = 4;
            loop0:
            while(true)
            {
               this.§2&§(4);
               while(true)
               {
                  this.§3!S§[0].Set(-param1,-param2);
                  while(true)
                  {
                     this.§3!S§[1].Set(param1,-param2);
                     addr145:
                     while(!_loc4_)
                     {
                        this.§3!S§[2].Set(param1,param2);
                        continue loop0;
                     }
                  }
                  addr45:
                  if(_loc3_ || _loc3_)
                  {
                     return;
                     addr52:
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §-2§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(!(_loc8_ && param1))
         {
            this.§^L§ = 4;
            while(true)
            {
               this.§2&§(4);
               while(!(_loc8_ && this))
               {
                  this.§3!S§[0].Set(-param1,-param2);
                  loop2:
                  while(true)
                  {
                     this.§3!S§[1].Set(param1,-param2);
                     addr142:
                     loop3:
                     while(true)
                     {
                        this.§3!S§[2].Set(param1,param2);
                        while(true)
                        {
                           if(!_loc8_)
                           {
                              if(!_loc7_)
                              {
                                 break;
                              }
                              this.§3!S§[3].Set(-param1,param2);
                              continue;
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
                  while(_loc7_ || param3)
                  {
                     §§goto(addr48);
                     §§goto(addr30);
                  }
               }
            }
         }
         §§goto(addr142);
      }
      
      public function §!;§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§^L§ = 2;
            while(true)
            {
               this.§2&§(2);
               while(true)
               {
                  this.§3!S§[0].SetV(param1);
                  while(!_loc4_)
                  {
                     this.§3!S§[1].SetV(param2);
                     while(!(_loc4_ && this))
                     {
                        §§push(this.§9!Z§);
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           addr180:
                           while(true)
                           {
                              §§push(param1.x);
                              addr182:
                              while(true)
                              {
                                 §§push(param2.x);
                                 addr184:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr185:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr186:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          continue loop4;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        while(!(_loc4_ && this))
                        {
                           this.§0!'§[0] = b2Math.§"!L§(b2Math.§?d§(param2,param1),1);
                           loop12:
                           while(!(_loc4_ && param1))
                           {
                              this.§0!'§[0].Normalize();
                              while(true)
                              {
                                 this.§0!'§[1].x = -this.§0!'§[0].x;
                                 while(true)
                                 {
                                    if(!_loc4_)
                                    {
                                       if(!(_loc3_ || param2))
                                       {
                                          break;
                                       }
                                       continue;
                                    }
                                    continue loop12;
                                 }
                                 §§goto(addr187);
                              }
                           }
                        }
                     }
                  }
               }
               if(!(_loc4_ && param1))
               {
                  return;
               }
            }
         }
         §§goto(addr187);
      }
      
      override public function TestPoint(param1:b2Transform, param2:b2Vec2) : Boolean
      {
         var _loc11_:Boolean = false;
         var _loc12_:Boolean = true;
         var _loc3_:b2Vec2 = null;
         var _loc10_:* = NaN;
         var _loc4_:b2Mat22 = param1.R;
         §§push(param2.x);
         if(_loc12_ || this)
         {
            §§push(§§pop() - param1.position.x);
            if(_loc12_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc5_:* = §§pop();
         §§push(param2.y);
         if(_loc12_)
         {
            §§push(§§pop() - param1.position.y);
            if(_loc12_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(_loc12_)
         {
            §§push(_loc4_.col1.x);
            if(!(_loc11_ && _loc3_))
            {
               §§push(§§pop() * §§pop());
               if(!(_loc11_ && this))
               {
                  §§push(_loc6_);
                  if(_loc12_)
                  {
                     addr88:
                     §§push(§§pop() + §§pop() * _loc4_.col1.y);
                     if(_loc12_ || param2)
                     {
                        addr96:
                        §§push(Number(§§pop()));
                     }
                  }
                  §§goto(addr88);
               }
               var _loc7_:* = §§pop();
               §§push(_loc5_);
               if(_loc12_ || param1)
               {
                  §§push(_loc4_.col2.x);
                  if(!_loc11_)
                  {
                     §§push(§§pop() * §§pop());
                     if(!(_loc11_ && param2))
                     {
                        addr119:
                        §§push(_loc6_);
                        if(!_loc11_)
                        {
                           addr126:
                           §§push(§§pop() + §§pop() * _loc4_.col2.y);
                           if(!_loc11_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        §§goto(addr126);
                     }
                     var _loc8_:* = §§pop();
                     var _loc9_:int = 0;
                     while(true)
                     {
                        if(_loc9_ >= this.§^L§)
                        {
                           return true;
                        }
                        _loc3_ = this.§3!S§[_loc9_];
                        if(_loc12_)
                        {
                           §§push(_loc7_);
                           if(!_loc11_)
                           {
                              §§push(_loc3_.x);
                              if(_loc12_ || _loc3_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(_loc12_)
                                 {
                                    addr168:
                                    §§push(Number(§§pop()));
                                    if(!_loc11_)
                                    {
                                       _loc5_ = §§pop();
                                       if(_loc12_ || param1)
                                       {
                                          addr179:
                                          §§push(_loc8_);
                                          if(!_loc11_)
                                          {
                                             addr182:
                                             §§push(§§pop() - _loc3_.y);
                                             if(!(_loc11_ && this))
                                             {
                                                addr193:
                                                _loc6_ = Number(§§pop());
                                             }
                                          }
                                          §§goto(addr193);
                                       }
                                       _loc3_ = this.§0!'§[_loc9_];
                                       if(_loc11_ && _loc3_)
                                       {
                                          continue;
                                       }
                                       §§push(_loc3_.x);
                                       if(!_loc11_)
                                       {
                                          §§push(_loc5_);
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(§§pop() * §§pop());
                                             if(_loc12_)
                                             {
                                                §§push(_loc3_.y);
                                                if(!(_loc11_ && param2))
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                   if(!(_loc11_ && this))
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc12_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         if(!_loc11_)
                                                         {
                                                            addr246:
                                                            §§push(§§pop());
                                                            if(_loc12_ || this)
                                                            {
                                                               addr254:
                                                               _loc10_ = §§pop();
                                                            }
                                                            addr256:
                                                            if(§§pop() > §§pop())
                                                            {
                                                               if(_loc12_ || this)
                                                               {
                                                                  break;
                                                               }
                                                            }
                                                            _loc9_++;
                                                            continue;
                                                         }
                                                      }
                                                      §§goto(addr256);
                                                      §§push(0);
                                                   }
                                                   §§goto(addr256);
                                                }
                                                §§goto(addr254);
                                             }
                                          }
                                       }
                                       §§goto(addr246);
                                    }
                                    §§goto(addr193);
                                 }
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr179);
                     }
                     return false;
                  }
                  §§goto(addr126);
               }
               §§goto(addr119);
            }
            §§goto(addr88);
         }
         §§goto(addr96);
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
         if(!(_loc20_ && param1))
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§79§);
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc21_ || param2)
         {
            §§push(param2.p1);
            if(!(_loc20_ && param3))
            {
               §§push(§§pop().x);
               if(!_loc20_)
               {
                  §§push(param3.position);
                  if(!(_loc20_ && param2))
                  {
                     §§push(§§pop().x);
                     if(_loc21_)
                     {
                        §§push(§§pop() - §§pop());
                        if(_loc21_ || param2)
                        {
                           §§push(Number(§§pop()));
                           if(!(_loc20_ && param2))
                           {
                              _loc6_ = §§pop();
                              if(!(_loc20_ && param3))
                              {
                                 addr104:
                                 §§push(param2.p1.y);
                                 if(_loc21_ || param3)
                                 {
                                    addr112:
                                    addr115:
                                    addr114:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc21_ || this)
                                    {
                                       addr123:
                                       §§push(Number(§§pop()));
                                    }
                                    _loc7_ = §§pop();
                                    addr125:
                                    _loc8_ = param3.R;
                                    §§push(_loc6_);
                                    if(!_loc20_)
                                    {
                                       §§push(_loc8_.col1.x);
                                       if(!_loc20_)
                                       {
                                          addr161:
                                          §§push(§§pop() * §§pop());
                                          if(_loc21_)
                                          {
                                             §§push(_loc7_);
                                             if(!(_loc20_ && param3))
                                             {
                                                §§push(§§pop() * _loc8_.col1.y);
                                             }
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(_loc6_);
                                          if(_loc21_ || param1)
                                          {
                                             §§push(_loc8_.col2.x);
                                             if(_loc21_ || param1)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc21_)
                                                {
                                                   addr183:
                                                   §§push(_loc7_);
                                                   if(!(_loc20_ && param1))
                                                   {
                                                      addr191:
                                                      §§push(§§pop() * _loc8_.col2.y);
                                                   }
                                                   §§push(§§pop() + §§pop());
                                                   if(!_loc20_)
                                                   {
                                                      §§push(Number(§§pop()));
                                                   }
                                                }
                                                var _loc11_:* = §§pop();
                                                if(_loc21_ || param2)
                                                {
                                                   §§push(param2.p2);
                                                   if(!_loc20_)
                                                   {
                                                      §§push(§§pop().x);
                                                      if(_loc21_)
                                                      {
                                                         §§push(param3.position);
                                                         if(!_loc20_)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(§§pop() - §§pop());
                                                               if(_loc21_ || param2)
                                                               {
                                                                  addr229:
                                                                  §§push(Number(§§pop()));
                                                                  if(!(_loc20_ && param2))
                                                                  {
                                                                     addr237:
                                                                     _loc6_ = §§pop();
                                                                     if(_loc21_)
                                                                     {
                                                                        addr242:
                                                                        §§push(param2.p2.y);
                                                                        if(_loc21_ || param3)
                                                                        {
                                                                           addr253:
                                                                           §§push(§§pop() - param3.position.y);
                                                                           if(!(_loc20_ && param1))
                                                                           {
                                                                              addr262:
                                                                              _loc7_ = Number(§§pop());
                                                                           }
                                                                        }
                                                                        §§goto(addr262);
                                                                     }
                                                                     _loc8_ = param3.R;
                                                                     §§push(_loc6_);
                                                                     if(!(_loc20_ && this))
                                                                     {
                                                                        §§push(_loc8_.col1.x);
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           §§push(§§pop() * §§pop());
                                                                           if(_loc21_)
                                                                           {
                                                                              §§push(_loc7_);
                                                                              if(!(_loc20_ && param3))
                                                                              {
                                                                                 addr296:
                                                                                 §§push(§§pop() * _loc8_.col1.y);
                                                                              }
                                                                              §§push(§§pop() + §§pop());
                                                                              if(_loc20_)
                                                                              {
                                                                              }
                                                                              addr304:
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc6_);
                                                                              if(_loc21_ || param1)
                                                                              {
                                                                                 §§push(_loc8_.col2.x);
                                                                                 if(!_loc20_)
                                                                                 {
                                                                                    addr336:
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(_loc21_)
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(_loc21_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() * _loc8_.col2.y);
                                                                                       }
                                                                                    }
                                                                                    var _loc13_:Number = §§pop();
                                                                                    §§push(_loc12_);
                                                                                    if(!(_loc20_ && param3))
                                                                                    {
                                                                                       §§push(§§pop() - _loc10_);
                                                                                       if(!_loc20_)
                                                                                       {
                                                                                          addr350:
                                                                                          §§push(Number(§§pop()));
                                                                                       }
                                                                                       var _loc14_:* = §§pop();
                                                                                       §§push(_loc13_);
                                                                                       if(_loc21_ || param1)
                                                                                       {
                                                                                          §§push(§§pop() - _loc11_);
                                                                                          if(_loc21_ || param3)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                       }
                                                                                       var _loc15_:* = §§pop();
                                                                                       var _loc16_:* = -1;
                                                                                       var _loc17_:int = 0;
                                                                                       loop0:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc17_);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(this.§^L§);
                                                                                             if(_loc21_ || this)
                                                                                             {
                                                                                                if(§§pop() >= §§pop())
                                                                                                {
                                                                                                   §§goto(addr870);
                                                                                                }
                                                                                                §§push((_loc9_ = this.§3!S§[_loc17_]).x);
                                                                                                if(!_loc20_)
                                                                                                {
                                                                                                   §§push(_loc10_);
                                                                                                   if(_loc21_ || param2)
                                                                                                   {
                                                                                                      §§push(§§pop() - §§pop());
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         addr398:
                                                                                                         §§push(Number(§§pop()));
                                                                                                         if(_loc21_)
                                                                                                         {
                                                                                                            addr401:
                                                                                                            _loc6_ = §§pop();
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               §§push(_loc9_.y);
                                                                                                               if(_loc21_)
                                                                                                               {
                                                                                                                  addr409:
                                                                                                                  §§push(§§pop() - _loc11_);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr412:
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                  }
                                                                                                               }
                                                                                                               _loc7_ = §§pop();
                                                                                                            }
                                                                                                            §§push((_loc9_ = this.§0!'§[_loc17_]).x);
                                                                                                            if(_loc21_ || param2)
                                                                                                            {
                                                                                                               §§push(_loc6_);
                                                                                                               if(!(_loc20_ && this))
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     if(_loc21_)
                                                                                                                     {
                                                                                                                        §§push(_loc7_);
                                                                                                                        if(!(_loc20_ && param1))
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc21_ || param1)
                                                                                                                           {
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc21_)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 if(_loc21_ || this)
                                                                                                                                 {
                                                                                                                                    _loc18_ = §§pop();
                                                                                                                                    if(_loc21_ || param2)
                                                                                                                                    {
                                                                                                                                       §§push(_loc9_.x);
                                                                                                                                       loop1:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(_loc14_);
                                                                                                                                          loop2:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                             addr813:
                                                                                                                                             loop33:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_.y);
                                                                                                                                                loop5:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc15_);
                                                                                                                                                   addr816:
                                                                                                                                                   loop36:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(_loc21_ || param2)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(Number(§§pop()));
                                                                                                                                                               addr828:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                  addr829:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            addr827:
                                                                                                                                                         }
                                                                                                                                                         loop37:
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            §§push(0);
                                                                                                                                                            loop22:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               if(§§pop() == §§pop())
                                                                                                                                                               {
                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                  {
                                                                                                                                                                     addr836:
                                                                                                                                                                     if(_loc18_ >= 0)
                                                                                                                                                                     {
                                                                                                                                                                        loop42:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           loop4:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc5_);
                                                                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!(_loc20_ && param3))
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc4_);
                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc21_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc21_)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc20_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc20_ && param3)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop5;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr560:
                                                                                                                                                                                                   §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                   if(!(_loc20_ && param3))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc21_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc20_ && param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop22;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(§§pop() >= §§pop())
                                                                                                                                                                                                            {
                                                                                                                                                                                                               do
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  _loc17_++;
                                                                                                                                                                                                                  if(_loc20_ && param1)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr489:
                                                                                                                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     while(false)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        continue loop4;
                                                                                                                                                                                                                        §§goto(addr489);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     continue loop0;
                                                                                                                                                                                                                     addr506:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               while(_loc21_ || param3);
                                                                                                                                                                                                               
                                                                                                                                                                                                               loop43:
                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                        if(_loc21_ || param2)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           loop48:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                                                                              addr667:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc21_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc20_ && param3))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr678:
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          loop32:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(_loc21_ || this)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                _loc5_ = §§pop();
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc20_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      break loop22;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   continue loop4;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                addr686:
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                loop11:
                                                                                                                                                                                                                                                for(; !_loc20_; continue loop32)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!(_loc21_ || param2))
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      continue loop37;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§push(0);
                                                                                                                                                                                                                                                   loop12:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() > §§pop());
                                                                                                                                                                                                                                                      addr704:
                                                                                                                                                                                                                                                      while(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(§§pop());
                                                                                                                                                                                                                                                         if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(§§pop())
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§pop();
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc18_);
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc19_);
                                                                                                                                                                                                                                                                                    if(_loc21_ || param3)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                       while(_loc21_ || param3)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!_loc20_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop43;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop4;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr647:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             else
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop19:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(§§pop());
                                                                                                                                                                                                                                                                                                   addr806:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(§§pop())
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break loop12;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      loop9:
                                                                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr770:
                                                                                                                                                                                                                                                                                                         while(!§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr771:
                                                                                                                                                                                                                                                                                                         while(_loc21_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                            if(!_loc21_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop1;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                                                                                                                                                                               addr777:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                     break loop11;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr829);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                                                                                                                            addr742:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  addr749:
                                                                                                                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                     addr751:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop36;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(_loc21_ || param1)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              continue loop2;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           addr804:
                                                                                                                                                                                                                                                                                                                           addr804:
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop19;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr749);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  addr750:
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§goto(addr828);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            break loop12;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr836);
                                                                                                                                                                                                                                                                                       addr637:
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr751);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr628:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr774);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop48;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc20_ && param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop33;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc4_ = §§pop();
                                                                                                                                                                                                                                                                        loop27:
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc17_);
                                                                                                                                                                                                                                                                           if(_loc21_ || param2)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(int(§§pop()));
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           _loc16_ = §§pop();
                                                                                                                                                                                                                                                                           addr735:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc20_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop27;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop27;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr771);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     continue loop4;
                                                                                                                                                                                                                                                                     addr790:
                                                                                                                                                                                                                                                                     addr723:
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr770);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr715:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr647);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr806);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§pop();
                                                                                                                                                                                                                                                      §§goto(addr771);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc21_ || param3)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      if(_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr790);
                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   else
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§goto(addr804);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr803:
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr804);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr836);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop42;
                                                                                                                                                                                                                                          addr678:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr742);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    addr670:
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr703);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           addr666:
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr678);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr838);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr723);
                                                                                                                                                                                                               }
                                                                                                                                                                                                            }
                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(false);
                                                                                                                                                                                                                  if(_loc21_ || this)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr704);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr715);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr645);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr735);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr686);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(!(_loc20_ && param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            return §§pop();
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr838);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr777);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr667);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr750);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr759);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr628);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr637);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr560);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr670);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr678);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr799:
                                                                                                                                                                     }
                                                                                                                                                                     addr838:
                                                                                                                                                                     return false;
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               §§goto(addr803);
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§goto(addr799);
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr829);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr506);
                                                                                                                                 }
                                                                                                                                 §§goto(addr813);
                                                                                                                              }
                                                                                                                              §§goto(addr776);
                                                                                                                           }
                                                                                                                           §§goto(addr804);
                                                                                                                        }
                                                                                                                        §§goto(addr816);
                                                                                                                     }
                                                                                                                     §§goto(addr576);
                                                                                                                  }
                                                                                                                  §§goto(addr666);
                                                                                                               }
                                                                                                               §§goto(addr829);
                                                                                                            }
                                                                                                            §§goto(addr827);
                                                                                                         }
                                                                                                         §§goto(addr412);
                                                                                                      }
                                                                                                      §§goto(addr401);
                                                                                                   }
                                                                                                   §§goto(addr409);
                                                                                                }
                                                                                                §§goto(addr398);
                                                                                             }
                                                                                             §§goto(addr862);
                                                                                          }
                                                                                          break;
                                                                                       }
                                                                                       addr862:
                                                                                       if(§§pop() < §§pop())
                                                                                       {
                                                                                          return false;
                                                                                       }
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          addr870:
                                                                                          §§goto(addr873);
                                                                                       }
                                                                                       addr873:
                                                                                       if(_loc21_ || param2)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          break loop0;
                                                                                       }
                                                                                       param1.fraction = _loc4_;
                                                                                       _loc8_ = param3.R;
                                                                                       _loc9_ = this.§0!'§[_loc16_];
                                                                                       if(_loc21_ || param2)
                                                                                       {
                                                                                          §§push(param1.normal);
                                                                                          loop51:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_.col1);
                                                                                             addr995:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(§§pop().x);
                                                                                                addr996:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(_loc9_.x);
                                                                                                   addr998:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop() * §§pop());
                                                                                                      addr999:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc8_.col2);
                                                                                                         addr1011:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop().x);
                                                                                                            addr1012:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc9_.y);
                                                                                                               addr1014:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                  addr1015:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(§§pop() + §§pop());
                                                                                                                     addr1016:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§pop().x = §§pop();
                                                                                                                        continue loop51;
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
                                                                                          addr993:
                                                                                       }
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(param1.normal);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(_loc8_.col1);
                                                                                             if(!(_loc20_ && this))
                                                                                             {
                                                                                                §§push(§§pop().y);
                                                                                                if(_loc21_ || this)
                                                                                                {
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(_loc9_.x);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         if(!(_loc20_ && param1))
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            if(_loc21_ || param2)
                                                                                                            {
                                                                                                               addr948:
                                                                                                               if(!(_loc21_ || this))
                                                                                                               {
                                                                                                                  continue;
                                                                                                               }
                                                                                                               §§push(_loc8_.col2);
                                                                                                               if(_loc21_ || this)
                                                                                                               {
                                                                                                                  §§push(§§pop().y);
                                                                                                                  if(_loc21_)
                                                                                                                  {
                                                                                                                     addr967:
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc9_.y);
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           addr979:
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              addr982:
                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                              if(_loc21_ || param1)
                                                                                                                              {
                                                                                                                                 break;
                                                                                                                              }
                                                                                                                              §§goto(addr996);
                                                                                                                           }
                                                                                                                           §§goto(addr998);
                                                                                                                        }
                                                                                                                        §§goto(addr1014);
                                                                                                                     }
                                                                                                                     §§goto(addr1012);
                                                                                                                  }
                                                                                                                  §§goto(addr979);
                                                                                                               }
                                                                                                               §§goto(addr1011);
                                                                                                            }
                                                                                                            §§goto(addr982);
                                                                                                         }
                                                                                                         §§goto(addr1015);
                                                                                                      }
                                                                                                      §§goto(addr967);
                                                                                                   }
                                                                                                   §§goto(addr999);
                                                                                                }
                                                                                                §§goto(addr948);
                                                                                             }
                                                                                             else
                                                                                             {
                                                                                                §§goto(addr995);
                                                                                             }
                                                                                          }
                                                                                          else
                                                                                          {
                                                                                             §§goto(addr993);
                                                                                          }
                                                                                          §§goto(addr995);
                                                                                       }
                                                                                       §§pop().y = §§pop();
                                                                                       return true;
                                                                                       §§push(0);
                                                                                    }
                                                                                    §§goto(addr350);
                                                                                 }
                                                                                 §§push(§§pop() + §§pop());
                                                                                 if(_loc20_)
                                                                                 {
                                                                                 }
                                                                              }
                                                                              §§goto(addr336);
                                                                           }
                                                                           §§goto(addr304);
                                                                           §§push(Number(§§pop()));
                                                                        }
                                                                        §§goto(addr296);
                                                                     }
                                                                     §§goto(addr304);
                                                                  }
                                                                  §§goto(addr262);
                                                               }
                                                               §§goto(addr237);
                                                            }
                                                         }
                                                         §§goto(addr253);
                                                      }
                                                      §§goto(addr229);
                                                   }
                                                }
                                                §§goto(addr242);
                                             }
                                             §§goto(addr191);
                                          }
                                          §§goto(addr183);
                                       }
                                       §§push(§§pop() + §§pop());
                                       if(!(_loc20_ && param1))
                                       {
                                          §§push(Number(§§pop()));
                                       }
                                    }
                                    §§goto(addr161);
                                 }
                              }
                              §§goto(addr125);
                           }
                           §§goto(addr112);
                        }
                        §§goto(addr123);
                     }
                     §§goto(addr115);
                  }
                  §§goto(addr114);
               }
               §§goto(addr112);
            }
            §§goto(addr104);
         }
         §§goto(addr112);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§3!S§[0];
         §§push(param2.position.x);
         if(_loc12_ || param2)
         {
            §§push(_loc3_.col1.x);
            if(!_loc13_)
            {
               §§push(_loc4_.x);
               if(!(_loc13_ && _loc3_))
               {
                  addr71:
                  §§push(§§pop() * §§pop());
                  if(!_loc13_)
                  {
                     §§push(_loc3_.col2.x);
                     if(_loc12_ || param2)
                     {
                        §§push(§§pop() * _loc4_.y);
                     }
                  }
                  §§push(§§pop() + §§pop());
                  if(!(_loc13_ && param1))
                  {
                     addr80:
                     var _loc5_:* = Number(§§pop());
                     §§push(param2.position.y);
                     if(!_loc13_)
                     {
                        §§push(_loc3_.col1.y);
                        if(_loc12_)
                        {
                           §§push(_loc4_.x);
                           if(_loc12_)
                           {
                              §§push(§§pop() * §§pop());
                              if(_loc12_ || this)
                              {
                                 addr103:
                                 §§push(_loc3_.col2.y);
                                 if(!(_loc13_ && _loc3_))
                                 {
                                    addr113:
                                    §§push(§§pop() * _loc4_.y);
                                 }
                                 §§push(§§pop() + §§pop());
                              }
                              §§push(§§pop() + §§pop());
                              if(!(_loc13_ && this))
                              {
                                 addr125:
                                 §§push(Number(§§pop()));
                              }
                              var _loc6_:* = §§pop();
                              §§push(_loc5_);
                              if(!(_loc13_ && this))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!(_loc13_ && param2))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              loop0:
                              while(_loc9_ < this.§^L§)
                              {
                                 _loc4_ = this.§3!S§[_loc9_];
                                 if(!(_loc13_ && param1))
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       loop2:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          loop3:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             loop4:
                                             while(true)
                                             {
                                                §§push(_loc4_.x);
                                                if(_loc12_)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   loop5:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      loop6:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc12_)
                                                         {
                                                            §§push(_loc4_.y);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr498:
                                                               §§push(_loc4_.y);
                                                               if(!(_loc12_ || this))
                                                               {
                                                                  continue;
                                                               }
                                                               §§push(§§pop() * §§pop());
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           _loc11_ = §§pop();
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc5_);
                                                                              if(_loc12_)
                                                                              {
                                                                                 §§push(_loc10_);
                                                                                 loop19:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(§§pop() < §§pop());
                                                                                    loop20:
                                                                                    while(true)
                                                                                    {
                                                                                       if(!§§pop())
                                                                                       {
                                                                                          §§push(_loc10_);
                                                                                          if(!_loc13_)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop21:
                                                                                             for(; !(_loc13_ && _loc3_); if(!(_loc12_ || param2))
                                                                                             {
                                                                                                continue;
                                                                                             },§§goto(addr300),§§push(_loc10_))
                                                                                             {
                                                                                                loop22:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(§§pop()));
                                                                                                   addr443:
                                                                                                   loop23:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc5_ = §§pop();
                                                                                                      loop24:
                                                                                                      while(_loc12_)
                                                                                                      {
                                                                                                         §§push(_loc6_);
                                                                                                         loop25:
                                                                                                         while(!_loc13_)
                                                                                                         {
                                                                                                            §§push(_loc11_);
                                                                                                            loop26:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               if(_loc12_)
                                                                                                               {
                                                                                                                  if(!(_loc12_ || param2))
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(§§pop() < §§pop());
                                                                                                                  loop27:
                                                                                                                  for(; _loc12_ || param1; while(_loc12_ || _loc3_)
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(_loc12_ || _loc3_)
                                                                                                                        {
                                                                                                                           §§push(_loc7_);
                                                                                                                           if(!_loc13_)
                                                                                                                           {
                                                                                                                              if(_loc12_)
                                                                                                                              {
                                                                                                                                 §§goto(addr346);
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                              }
                                                                                                                              §§goto(addr419);
                                                                                                                           }
                                                                                                                           else
                                                                                                                           {
                                                                                                                              §§goto(addr348);
                                                                                                                           }
                                                                                                                        }
                                                                                                                        else
                                                                                                                        {
                                                                                                                           §§goto(addr371);
                                                                                                                        }
                                                                                                                        §§goto(addr361);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§push(_loc10_);
                                                                                                                     }
                                                                                                                     §§goto(addr348);
                                                                                                                     §§goto(addr201);
                                                                                                                  })
                                                                                                                  {
                                                                                                                     if(§§pop())
                                                                                                                     {
                                                                                                                        if(!(_loc13_ && param1))
                                                                                                                        {
                                                                                                                           §§push(_loc6_);
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(Number(§§pop()));
                                                                                                                              addr406:
                                                                                                                              addr453:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 if(_loc12_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       break;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       addr419:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          _loc6_ = §§pop();
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr429:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                       continue loop22;
                                                                                                                                    }
                                                                                                                                    addr429:
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc3_.col1);
                                                                                                                                 if(_loc13_)
                                                                                                                                 {
                                                                                                                                    break;
                                                                                                                                 }
                                                                                                                                 §§push(§§pop().y);
                                                                                                                                 if(!(_loc13_ && param2))
                                                                                                                                 {
                                                                                                                                    if(_loc13_)
                                                                                                                                    {
                                                                                                                                       continue loop4;
                                                                                                                                    }
                                                                                                                                    §§push(_loc4_.x);
                                                                                                                                    if(_loc13_ && this)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                 }
                                                                                                                                 loop46:
                                                                                                                                 while(!(_loc13_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(_loc3_.col2);
                                                                                                                                    if(!_loc12_)
                                                                                                                                    {
                                                                                                                                       continue loop6;
                                                                                                                                    }
                                                                                                                                    §§push(§§pop().y);
                                                                                                                                    if(_loc13_ && _loc3_)
                                                                                                                                    {
                                                                                                                                       continue loop14;
                                                                                                                                    }
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       §§goto(addr498);
                                                                                                                                    }
                                                                                                                                    else
                                                                                                                                    {
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          break loop46;
                                                                                                                                       }
                                                                                                                                       addr532:
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                    break loop21;
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              continue loop3;
                                                                                                                              addr260:
                                                                                                                              if(!(_loc12_ || _loc3_))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc13_ && this)
                                                                                                                              {
                                                                                                                                 continue loop16;
                                                                                                                              }
                                                                                                                              _loc8_ = §§pop();
                                                                                                                              loop37:
                                                                                                                              while(!(_loc13_ && this))
                                                                                                                              {
                                                                                                                                 _loc9_++;
                                                                                                                                 if(!(_loc12_ || this))
                                                                                                                                 {
                                                                                                                                    continue;
                                                                                                                                 }
                                                                                                                                 if(_loc12_ || _loc3_)
                                                                                                                                 {
                                                                                                                                    if(_loc12_)
                                                                                                                                    {
                                                                                                                                       if(!_loc13_)
                                                                                                                                       {
                                                                                                                                          while(false)
                                                                                                                                          {
                                                                                                                                             loop36:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc8_);
                                                                                                                                                if(!(_loc13_ && param1))
                                                                                                                                                {
                                                                                                                                                   §§push(_loc11_);
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      continue loop26;
                                                                                                                                                   }
                                                                                                                                                   if(_loc13_)
                                                                                                                                                   {
                                                                                                                                                      continue loop5;
                                                                                                                                                   }
                                                                                                                                                   §§push(§§pop() > §§pop());
                                                                                                                                                   if(!(_loc12_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop27;
                                                                                                                                                   }
                                                                                                                                                   if(§§pop())
                                                                                                                                                   {
                                                                                                                                                      if(_loc13_ && param2)
                                                                                                                                                      {
                                                                                                                                                         continue loop37;
                                                                                                                                                      }
                                                                                                                                                      §§push(_loc8_);
                                                                                                                                                      if(_loc12_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr225:
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            continue loop23;
                                                                                                                                                         }
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            addr243:
                                                                                                                                                            if(!(_loc13_ && param1))
                                                                                                                                                            {
                                                                                                                                                               if(_loc12_)
                                                                                                                                                               {
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(_loc12_)
                                                                                                                                                                  {
                                                                                                                                                                     addr255:
                                                                                                                                                                     if(_loc12_)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr257);
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr348:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc12_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc12_ || _loc3_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                 if(_loc12_)
                                                                                                                                                                                 {
                                                                                                                                                                                    addr360:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       break loop36;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr360:
                                                                                                                                                                                 }
                                                                                                                                                                                 break loop36;
                                                                                                                                                                              }
                                                                                                                                                                              break;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr418);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           _loc10_ = §§pop();
                                                                                                                                                                           break loop24;
                                                                                                                                                                        }
                                                                                                                                                                        addr348:
                                                                                                                                                                        addr535:
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr360);
                                                                                                                                                                  }
                                                                                                                                                                  addr258:
                                                                                                                                                                  if(!_loc13_)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr260);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     addr346:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§goto(addr360);
                                                                                                                                                                     }
                                                                                                                                                                     addr346:
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               else
                                                                                                                                                               {
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                  }
                                                                                                                                                                  addr417:
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr418);
                                                                                                                                                            }
                                                                                                                                                            break;
                                                                                                                                                         }
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            continue loop22;
                                                                                                                                                         }
                                                                                                                                                         if(_loc13_)
                                                                                                                                                         {
                                                                                                                                                            continue loop2;
                                                                                                                                                         }
                                                                                                                                                         addr257:
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         §§goto(addr258);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr243);
                                                                                                                                                   }
                                                                                                                                                   else
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc11_);
                                                                                                                                                      if(_loc12_ || this)
                                                                                                                                                      {
                                                                                                                                                         §§goto(addr243);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr255);
                                                                                                                                                }
                                                                                                                                                §§goto(addr225);
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                if(_loc12_)
                                                                                                                                                {
                                                                                                                                                   if(_loc13_ && _loc3_)
                                                                                                                                                   {
                                                                                                                                                      continue loop25;
                                                                                                                                                   }
                                                                                                                                                   _loc7_ = §§pop();
                                                                                                                                                   §§goto(addr371);
                                                                                                                                                   continue loop25;
                                                                                                                                                }
                                                                                                                                                §§goto(addr406);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          continue loop0;
                                                                                                                                          addr185:
                                                                                                                                       }
                                                                                                                                       continue loop18;
                                                                                                                                    }
                                                                                                                                    addr428:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                    }
                                                                                                                                    §§goto(addr429);
                                                                                                                                 }
                                                                                                                                 else
                                                                                                                                 {
                                                                                                                                    addr371:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       if(_loc13_)
                                                                                                                                       {
                                                                                                                                          continue loop24;
                                                                                                                                       }
                                                                                                                                    }
                                                                                                                                    §§goto(addr406);
                                                                                                                                    addr371:
                                                                                                                                 }
                                                                                                                                 §§goto(addr187);
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(!(_loc13_ && this))
                                                                                                                                 {
                                                                                                                                    continue loop21;
                                                                                                                                 }
                                                                                                                                 §§goto(addr346);
                                                                                                                              }
                                                                                                                              continue loop22;
                                                                                                                              addr420:
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr420);
                                                                                                                     }
                                                                                                                     else
                                                                                                                     {
                                                                                                                        §§goto(addr417);
                                                                                                                        §§push(_loc11_);
                                                                                                                     }
                                                                                                                     §§goto(addr418);
                                                                                                                  }
                                                                                                                  continue loop20;
                                                                                                               }
                                                                                                               continue loop19;
                                                                                                            }
                                                                                                            continue loop15;
                                                                                                         }
                                                                                                         continue loop17;
                                                                                                      }
                                                                                                      continue loop1;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                §§goto(addr535);
                                                                                             }
                                                                                          }
                                                                                          §§goto(addr443);
                                                                                       }
                                                                                       §§goto(addr428);
                                                                                    }
                                                                                 }
                                                                              }
                                                                              §§goto(addr429);
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
                                                §§goto(addr532);
                                             }
                                          }
                                       }
                                    }
                                 }
                                 §§goto(addr185);
                              }
                              if(_loc12_ || this)
                              {
                                 §§push(param1.§ 1§);
                                 if(_loc12_)
                                 {
                                    §§push(_loc5_);
                                    if(!(_loc13_ && param2))
                                    {
                                       §§push(§§pop() - b2internal::=!W);
                                       if(_loc12_ || _loc3_)
                                       {
                                          §§pop().x = §§pop();
                                          if(!_loc13_)
                                          {
                                             addr628:
                                             §§push(param1.§ 1§);
                                             §§push(_loc6_);
                                             if(_loc12_)
                                             {
                                                addr631:
                                                §§push(§§pop() - b2internal::=!W);
                                             }
                                             §§pop().y = §§pop();
                                             while(true)
                                             {
                                                §§push(param1.§,e§);
                                                loop49:
                                                while(true)
                                                {
                                                   §§push(_loc7_);
                                                   addr612:
                                                   while(true)
                                                   {
                                                      §§pop().x = §§pop() + b2internal::=!W;
                                                      continue loop49;
                                                   }
                                                }
                                                if(!(_loc12_ || _loc3_))
                                                {
                                                   continue;
                                                }
                                                return;
                                                addr607:
                                             }
                                          }
                                          §§goto(addr607);
                                       }
                                    }
                                    §§goto(addr631);
                                 }
                                 §§goto(addr628);
                              }
                              §§goto(addr607);
                           }
                           §§goto(addr113);
                        }
                        §§goto(addr103);
                     }
                     §§goto(addr125);
                  }
                  §§goto(addr80);
               }
               §§push(§§pop() + §§pop());
            }
            §§goto(addr71);
         }
         §§goto(addr80);
      }
      
      override public function ComputeMass(param1:b2MassData, param2:Number) : void
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc11_:b2Vec2 = null;
         var _loc12_:b2Vec2 = null;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = NaN;
         var _loc16_:* = NaN;
         var _loc17_:* = NaN;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(!(_loc27_ && _loc3_))
         {
            if(this.§^L§ == 2)
            {
               loop133:
               while(true)
               {
                  §§push(param1.center);
                  loop134:
                  while(true)
                  {
                     §§push(0.5);
                     loop135:
                     while(true)
                     {
                        §§push(§§pop() * (this.§3!S§[0].x + this.§3!S§[1].x));
                        loop136:
                        while(true)
                        {
                           §§pop().x = §§pop();
                           while(true)
                           {
                              §§push(param1.center);
                              if(!(_loc28_ || param2))
                              {
                                 break;
                              }
                              §§push(0.5);
                              if(_loc28_)
                              {
                                 if(_loc27_ && param1)
                                 {
                                    continue loop135;
                                 }
                                 §§push(§§pop() * (this.§3!S§[0].y + this.§3!S§[1].y));
                              }
                              if(_loc28_)
                              {
                                 §§pop().y = §§pop();
                                 while(!(_loc27_ && _loc3_))
                                 {
                                    continue loop133;
                                 }
                                 continue;
                                 addr119:
                              }
                              continue loop136;
                           }
                           continue loop134;
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(0);
               if(!(_loc27_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc3_:* = §§pop();
               §§push(0);
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc4_:* = §§pop();
               §§push(0);
               if(_loc28_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(1 / 3);
               if(!_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§^L§)
               {
                  _loc11_ = this.§3!S§[_loc10_];
                  if(!(_loc27_ && param2))
                  {
                     _loc12_ = _loc10_ + 1 < this.§^L§ ? this.§3!S§[int(_loc10_ + 1)] : this.§3!S§[0];
                     if(_loc28_)
                     {
                        §§push(_loc11_.x);
                        while(true)
                        {
                           §§push(_loc7_);
                           loop2:
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              loop3:
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    loop5:
                                    while(true)
                                    {
                                       §§push(_loc11_.y);
                                       loop6:
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          loop7:
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             loop8:
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                loop9:
                                                while(true)
                                                {
                                                   _loc14_ = §§pop();
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(_loc28_)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.y);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        addr1151:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr1152:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr1153:
                                                                              while(true)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 addr1154:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    continue loop11;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        loop61:
                                                                        while(true)
                                                                        {
                                                                           if(_loc27_ && _loc3_)
                                                                           {
                                                                              continue loop16;
                                                                           }
                                                                           if(_loc27_)
                                                                           {
                                                                              break;
                                                                           }
                                                                           §§push(Number(§§pop()));
                                                                           loop62:
                                                                           while(true)
                                                                           {
                                                                              _loc4_ = §§pop();
                                                                              loop63:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 loop64:
                                                                                 while(true)
                                                                                 {
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       if(_loc27_ && this)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       §§push(Number(§§pop()));
                                                                                       loop65:
                                                                                       for(; _loc28_ || this; while(!(_loc27_ && param1))
                                                                                       {
                                                                                          _loc24_ = §§pop();
                                                                                          §§goto(addr887);
                                                                                          §§goto(addr715);
                                                                                       })
                                                                                       {
                                                                                          _loc19_ = §§pop();
                                                                                          loop66:
                                                                                          while(_loc28_)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             loop67:
                                                                                             for(; _loc28_ || this; while(_loc28_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                continue loop65;
                                                                                             })
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                while(_loc28_)
                                                                                                {
                                                                                                   _loc20_ = §§pop();
                                                                                                   while(true)
                                                                                                   {
                                                                                                      if(!(_loc27_ && param1))
                                                                                                      {
                                                                                                         if(!(_loc27_ && param1))
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§goto(addr923);
                                                                                                            }
                                                                                                            addr967:
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      continue loop66;
                                                                                                      §§goto(addr262);
                                                                                                   }
                                                                                                   §§goto(addr1154);
                                                                                                   continue loop66;
                                                                                                }
                                                                                                loop32:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc18_ = §§pop();
                                                                                                   loop33:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(_loc5_);
                                                                                                      loop34:
                                                                                                      for(; !_loc27_; while(!(_loc27_ && _loc3_))
                                                                                                      {
                                                                                                         §§goto(addr1001);
                                                                                                         §§push(_loc18_);
                                                                                                      })
                                                                                                      {
                                                                                                         §§push(_loc18_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() + §§pop());
                                                                                                            loop36:
                                                                                                            while(!_loc27_)
                                                                                                            {
                                                                                                               §§push(Number(§§pop()));
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  _loc5_ = §§pop();
                                                                                                                  while(_loc28_)
                                                                                                                  {
                                                                                                                     if(!(_loc28_ || this))
                                                                                                                     {
                                                                                                                        continue loop10;
                                                                                                                     }
                                                                                                                     §§push(_loc3_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!(_loc27_ && _loc3_))
                                                                                                                        {
                                                                                                                           addr1053:
                                                                                                                           if(!(_loc28_ || param1))
                                                                                                                           {
                                                                                                                              break;
                                                                                                                              addr1061:
                                                                                                                           }
                                                                                                                           §§push(_loc18_);
                                                                                                                           while(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc9_);
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 addr1065:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(_loc7_);
                                                                                                                                    addr1066:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc11_.x);
                                                                                                                                       addr1068:
                                                                                                                                       while(true)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          addr1069:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(_loc12_.x);
                                                                                                                                             addr1071:
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                addr1072:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr1073:
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      addr1074:
                                                                                                                                                      while(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                      }
                                                                                                                                                      addr1103:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         continue loop32;
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
                                                                                                                           continue loop2;
                                                                                                                        }
                                                                                                                        continue loop36;
                                                                                                                        loop75:
                                                                                                                        while(_loc28_ || _loc3_)
                                                                                                                        {
                                                                                                                           _loc22_ = §§pop();
                                                                                                                           while(!_loc27_)
                                                                                                                           {
                                                                                                                              §§push(_loc15_);
                                                                                                                              loop77:
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                 addr891:
                                                                                                                                 addr837:
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    _loc23_ = §§pop();
                                                                                                                                    addr892:
                                                                                                                                    addr1078:
                                                                                                                                    while(!(_loc27_ && this))
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       continue loop67;
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(_loc4_);
                                                                                                                                       continue loop34;
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    if(!(_loc27_ && this))
                                                                                                                                    {
                                                                                                                                       continue loop62;
                                                                                                                                    }
                                                                                                                                    continue loop77;
                                                                                                                                 }
                                                                                                                                 continue loop62;
                                                                                                                              }
                                                                                                                              addr696:
                                                                                                                              if(!(_loc28_ || param2))
                                                                                                                              {
                                                                                                                                 continue;
                                                                                                                              }
                                                                                                                              if(_loc27_ && param1)
                                                                                                                              {
                                                                                                                                 continue loop33;
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§push(_loc6_);
                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                 {
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       continue loop64;
                                                                                                                                    }
                                                                                                                                    if(!_loc27_)
                                                                                                                                    {
                                                                                                                                       if(_loc28_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc17_);
                                                                                                                                          if(!(_loc27_ && _loc3_))
                                                                                                                                          {
                                                                                                                                             if(_loc28_ || _loc3_)
                                                                                                                                             {
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   if(!(_loc28_ || _loc3_))
                                                                                                                                                   {
                                                                                                                                                      continue loop7;
                                                                                                                                                   }
                                                                                                                                                   §§push(_loc25_);
                                                                                                                                                   if(!(_loc27_ && _loc3_))
                                                                                                                                                   {
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            addr322:
                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc26_);
                                                                                                                                                               if(!(_loc27_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc28_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc28_)
                                                                                                                                                                     {
                                                                                                                                                                        addr342:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc27_ && this))
                                                                                                                                                                        {
                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              addr352:
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!(_loc27_ && _loc3_))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(_loc28_ || _loc3_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                                                                       if(_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc28_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc28_)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr381:
                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                if(!(_loc27_ && param1))
                                                                                                                                                                                                {
                                                                                                                                                                                                   _loc6_ = §§pop();
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc28_ || _loc3_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr396:
                                                                                                                                                                                                         if(!(_loc28_ || param2))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr689:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc28_ || param1)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr696);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         else
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr892);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop33;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc9_);
                                                                                                                                                                                                      if(_loc28_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         addr715:
                                                                                                                                                                                                         if(!(_loc28_ || param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop65;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop75;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         if(_loc27_)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            break;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§push(0.25);
                                                                                                                                                                                                         if(!(_loc27_ && param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(!(_loc28_ || param1))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  continue loop12;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr749);
                                                                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§goto(addr1103);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            addr1102:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr831);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr396);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr902);
                                                                                                                                                                                                   addr887:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr811);
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr1137);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr837);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr381);
                                                                                                                                                                                    }
                                                                                                                                                                                    else
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr1151);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr664);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr675);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1064);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr663);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr802);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr617);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr621);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr440);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr639);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr672);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr342);
                                                                                                                                                }
                                                                                                                                                §§goto(addr823);
                                                                                                                                             }
                                                                                                                                             §§goto(addr835);
                                                                                                                                          }
                                                                                                                                          §§goto(addr352);
                                                                                                                                       }
                                                                                                                                       §§goto(addr650);
                                                                                                                                    }
                                                                                                                                    §§goto(addr676);
                                                                                                                                 }
                                                                                                                                 §§goto(addr381);
                                                                                                                              }
                                                                                                                              §§goto(addr950);
                                                                                                                           }
                                                                                                                           continue loop63;
                                                                                                                        }
                                                                                                                     }
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§goto(addr1102);
                                                                                                                        §§goto(addr1053);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr1139:
                                                                                                                  while(_loc28_ || _loc3_)
                                                                                                                  {
                                                                                                                     §§goto(addr1101);
                                                                                                                     §§push(0.5);
                                                                                                                  }
                                                                                                                  addr923:
                                                                                                                  continue loop5;
                                                                                                                  while(_loc28_ || this)
                                                                                                                  {
                                                                                                                     §§goto(addr931);
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     §§goto(addr811);
                                                                                                                  }
                                                                                                               }
                                                                                                            }
                                                                                                            §§goto(addr1153);
                                                                                                         }
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc17_ = §§pop();
                                                                                                         §§goto(addr1139);
                                                                                                      }
                                                                                                   }
                                                                                                }
                                                                                                addr950:
                                                                                             }
                                                                                             continue loop9;
                                                                                          }
                                                                                          continue loop15;
                                                                                       }
                                                                                       continue loop61;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       _loc3_ = §§pop();
                                                                                       §§goto(addr1078);
                                                                                    }
                                                                                 }
                                                                                 continue loop8;
                                                                              }
                                                                           }
                                                                        }
                                                                        continue loop6;
                                                                     }
                                                                  }
                                                               }
                                                               continue loop3;
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
                     §§goto(addr967);
                  }
                  §§goto(addr231);
               }
               if(_loc28_)
               {
                  §§push(param1);
                  §§push(param2);
                  if(!_loc27_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§@!V§ = §§pop();
                  if(!(_loc27_ && param2))
                  {
                     §§push(_loc3_);
                     if(!_loc27_)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1275:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1276:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr1277:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                        addr1274:
                     }
                     while(true)
                     {
                        _loc3_ = §§pop();
                     }
                     addr1278:
                  }
                  loop130:
                  while(true)
                  {
                     §§push(_loc4_);
                     if(!(_loc27_ && _loc3_))
                     {
                        §§push(1);
                        if(!_loc27_)
                        {
                           §§push(_loc5_);
                           if(_loc28_)
                           {
                              §§push(§§pop() / §§pop());
                              if(!(_loc27_ && param2))
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc28_)
                                 {
                                    addr1254:
                                    §§push(Number(§§pop()));
                                    if(_loc28_)
                                    {
                                       if(!_loc27_)
                                       {
                                          _loc4_ = §§pop();
                                          while(true)
                                          {
                                             param1.center.Set(_loc3_,_loc4_);
                                             do
                                             {
                                                §§push(param1);
                                                §§push(param2);
                                                if(_loc28_)
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§pop().§9o§ = §§pop();
                                             }
                                             while(!_loc28_);
                                             
                                             if(_loc28_)
                                             {
                                                if(_loc28_)
                                                {
                                                   break;
                                                }
                                                continue loop130;
                                             }
                                          }
                                          return;
                                          addr1259:
                                       }
                                       §§goto(addr1277);
                                    }
                                    §§goto(addr1278);
                                 }
                                 §§goto(addr1254);
                              }
                              else
                              {
                                 §§goto(addr1276);
                              }
                           }
                           else
                           {
                              §§goto(addr1275);
                           }
                           §§goto(addr1276);
                        }
                        else
                        {
                           §§goto(addr1274);
                        }
                     }
                     §§goto(addr1254);
                  }
               }
               §§goto(addr1259);
            }
         }
         §§goto(addr83);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         /*
          * Decompilation error
          * Timeout (1 minute) was reached
          * Instruction count: 1052
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to timeout");
      }
      
      public function §>!2§() : int
      {
         return this.§^L§;
      }
      
      public function §,n§() : Vector.<b2Vec2>
      {
         return this.§3!S§;
      }
      
      public function §%<§() : Vector.<b2Vec2>
      {
         return this.§0!'§;
      }
      
      public function §"9§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§3!S§[0].x * param1.x);
         if(_loc7_ || param1)
         {
            §§push(§§pop() + this.§3!S§[0].y * param1.y);
            if(_loc7_ || _loc3_)
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
            if(_loc7_ || _loc2_)
            {
               if(_loc7_)
               {
                  if(§§pop() >= this.§^L§)
                  {
                     if(!_loc6_)
                     {
                        if(_loc7_ || this)
                        {
                           §§push(_loc2_);
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!(_loc6_ && _loc2_))
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 if(_loc7_ || this)
                                 {
                                    addr130:
                                    _loc3_ = Number(§§pop());
                                    while(true)
                                    {
                                    }
                                    addr131:
                                 }
                                 else
                                 {
                                    addr168:
                                    while(true)
                                    {
                                       §§push(§§pop());
                                       if(!_loc6_)
                                       {
                                          _loc5_ = §§pop();
                                          while(true)
                                          {
                                             §§push(_loc3_);
                                          }
                                          addr182:
                                       }
                                       addr183:
                                       while(true)
                                       {
                                          if(§§pop() <= §§pop())
                                          {
                                             loop3:
                                             while(true)
                                             {
                                                _loc4_++;
                                                addr96:
                                                while(true)
                                                {
                                                   if(!(_loc7_ || param1))
                                                   {
                                                      continue loop3;
                                                   }
                                                   if(_loc7_)
                                                   {
                                                      break loop3;
                                                   }
                                                }
                                             }
                                             continue loop0;
                                             addr84:
                                          }
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                addr188:
                                                §§push(int(§§pop()));
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop4;
                                                }
                                                addr188:
                                             }
                                             §§goto(addr188);
                                          }
                                       }
                                    }
                                    addr168:
                                 }
                                 §§goto(addr84);
                              }
                              §§goto(addr182);
                           }
                           §§goto(addr130);
                        }
                     }
                     §§goto(addr96);
                  }
                  else
                  {
                     §§push(this.§3!S§[_loc4_].x * param1.x);
                     if(!(_loc6_ && _loc2_))
                     {
                        §§push(this.§3!S§[_loc4_].y * param1.y);
                        if(!_loc6_)
                        {
                           §§push(§§pop() + §§pop());
                           if(!(_loc6_ && this))
                           {
                              addr167:
                              §§goto(addr168);
                              §§push(Number(§§pop()));
                           }
                           §§goto(addr168);
                        }
                        §§goto(addr183);
                     }
                     §§goto(addr167);
                  }
               }
               §§goto(addr188);
            }
            break;
         }
         return §§pop();
      }
      
      public function §0-§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§3!S§[0].x * param1.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.§3!S§[0].y * param1.y);
            if(!(_loc7_ && this))
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
               if(_loc6_)
               {
                  if(§§pop() >= this.§^L§)
                  {
                     if(!(_loc7_ && this))
                     {
                        if(!(_loc7_ && _loc3_))
                        {
                           break;
                        }
                        loop4:
                        while(true)
                        {
                           §§push(_loc5_);
                           if(!_loc7_)
                           {
                              §§push(Number(§§pop()));
                           }
                           if(_loc6_)
                           {
                              _loc3_ = §§pop();
                              while(true)
                              {
                              }
                              addr111:
                           }
                           else
                           {
                              addr164:
                              loop7:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr165:
                                 while(true)
                                 {
                                    if(§§pop() <= §§pop())
                                    {
                                       loop3:
                                       while(true)
                                       {
                                          _loc4_++;
                                          addr98:
                                          while(true)
                                          {
                                             if(_loc7_)
                                             {
                                                continue loop3;
                                             }
                                             if(!_loc7_)
                                             {
                                                break loop3;
                                             }
                                          }
                                       }
                                       continue loop0;
                                       addr96:
                                    }
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       addr167:
                                       while(true)
                                       {
                                          §§push(int(§§pop()));
                                          addr168:
                                          while(true)
                                          {
                                             _loc2_ = §§pop();
                                             continue loop4;
                                          }
                                       }
                                    }
                                    continue loop7;
                                 }
                              }
                              addr164:
                           }
                           §§goto(addr96);
                        }
                     }
                     §§goto(addr98);
                  }
                  else
                  {
                     §§push(this.§3!S§[_loc4_].x * param1.x);
                     if(!_loc7_)
                     {
                        §§push(this.§3!S§[_loc4_].y * param1.y);
                        if(_loc6_ || _loc2_)
                        {
                           §§push(§§pop() + §§pop());
                           if(_loc6_ || this)
                           {
                              addr147:
                              §§push(Number(§§pop()));
                              if(_loc7_)
                              {
                              }
                              §§goto(addr164);
                           }
                           §§push(§§pop());
                           if(_loc6_)
                           {
                              addr163:
                              _loc5_ = §§pop();
                              §§goto(addr164);
                           }
                           §§goto(addr165);
                        }
                        §§goto(addr163);
                     }
                     §§goto(addr147);
                  }
               }
               §§goto(addr167);
            }
            §§goto(addr168);
         }
         return this.§3!S§[_loc2_];
      }
      
      private function §;g§() : Boolean
      {
         return false;
      }
      
      private function §2&§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§3!S§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!(_loc3_ && param1))
               {
                  break;
               }
               do
               {
                  if(!(_loc4_ || _loc3_))
                  {
                     continue;
                  }
               }
               while(!_loc4_);
               
               continue;
               addr49:
            }
            else
            {
               this.§3!S§[_loc2_] = new b2Vec2();
            }
            while(true)
            {
               this.§0!'§[_loc2_] = new b2Vec2();
               while(true)
               {
                  _loc2_++;
                  §§goto(addr49);
               }
            }
         }
      }
   }
}
