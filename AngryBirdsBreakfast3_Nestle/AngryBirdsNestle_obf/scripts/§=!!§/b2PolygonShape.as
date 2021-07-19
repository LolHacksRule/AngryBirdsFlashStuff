package §=!!§
{
   import §!§.*;
   import §'!_§.*;
   import §0"!§.*;
   import §@!E§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §3!>§:b2Mat22;
      
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            §3!>§ = new b2Mat22();
         }
      }
      
      b2internal var §,[§:b2Vec2;
      
      b2internal var §^v§:Vector.<b2Vec2>;
      
      b2internal var §6"0§:Vector.<b2Vec2>;
      
      b2internal var §"![§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = false;
         var _loc2_:Boolean = true;
         if(_loc2_)
         {
            super();
            loop0:
            while(true)
            {
               §5Q§ = b2internal::3!;;
               loop1:
               while(true)
               {
                  this.§,[§ = new b2Vec2();
                  loop2:
                  while(true)
                  {
                     this.§^v§ = new Vector.<b2Vec2>();
                     while(true)
                     {
                        this.§6"0§ = new Vector.<b2Vec2>();
                        while(!(_loc1_ && _loc2_))
                        {
                           if(!_loc1_)
                           {
                              §>!M§ = b2Settings.b2_polygonRadius;
                              loop5:
                              while(!_loc1_)
                              {
                                 while(true)
                                 {
                                    this.§,[§.§>![§();
                                    if(_loc2_ || _loc1_)
                                    {
                                       if(_loc2_)
                                       {
                                          if(!_loc1_)
                                          {
                                             break;
                                          }
                                          continue loop0;
                                       }
                                       continue loop1;
                                    }
                                    continue loop5;
                                 }
                                 return;
                              }
                              continue;
                           }
                           continue loop2;
                        }
                     }
                  }
               }
            }
         }
         §§goto(addr57);
      }
      
      public static function §&"#§(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || _loc3_)
         {
            _loc3_.§9!X§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function § `§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§4!n§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §33§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!_loc4_)
         {
            _loc3_.§=!^§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §0m§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§+!%§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §8!K§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_ || _loc3_)
         {
            _loc3_.§!",§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function § !i§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
      {
         var _loc17_:Boolean = false;
         var _loc18_:Boolean = true;
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
         if(!_loc17_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(0);
         if(!(_loc17_ && param2))
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         §§push(0);
         if(_loc18_ || param1)
         {
            §§push(Number(§§pop()));
         }
         var _loc6_:* = §§pop();
         §§push(1 / 3);
         if(_loc18_)
         {
            §§push(Number(§§pop()));
         }
         var _loc7_:* = §§pop();
         var _loc8_:int = 0;
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(!_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!_loc17_)
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
                              while(true)
                              {
                                 §§push(_loc9_.y);
                                 loop6:
                                 while(true)
                                 {
                                    §§push(_loc6_);
                                    loop7:
                                    while(!(_loc17_ && param1))
                                    {
                                       §§push(§§pop() - §§pop());
                                       while(_loc18_ || param1)
                                       {
                                          §§push(Number(§§pop()));
                                          while(true)
                                          {
                                             _loc12_ = §§pop();
                                             loop10:
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                loop11:
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   loop12:
                                                   while(true)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      loop13:
                                                      while(true)
                                                      {
                                                         §§push(Number(§§pop()));
                                                         loop14:
                                                         while(true)
                                                         {
                                                            _loc13_ = §§pop();
                                                            while(true)
                                                            {
                                                               §§push(_loc10_.y);
                                                               while(true)
                                                               {
                                                                  §§push(_loc6_);
                                                                  addr343:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(!(_loc17_ && param2))
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr352:
                                                                     while(true)
                                                                     {
                                                                        _loc14_ = §§pop();
                                                                        addr353:
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc11_);
                                                                           addr289:
                                                                           while(_loc18_ || param1)
                                                                           {
                                                                              §§push(_loc14_);
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                           continue loop14;
                                                                        }
                                                                     }
                                                                  }
                                                                  loop25:
                                                                  while(_loc18_ || param1)
                                                                  {
                                                                     _loc15_ = §§pop();
                                                                     loop26:
                                                                     while(true)
                                                                     {
                                                                        §§push(0.5);
                                                                        if(_loc18_)
                                                                        {
                                                                           if(!(_loc17_ && param1))
                                                                           {
                                                                              if(_loc18_)
                                                                              {
                                                                                 §§push(_loc15_);
                                                                                 loop27:
                                                                                 while(!(_loc17_ && b2PolygonShape))
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    loop28:
                                                                                    while(!_loc17_)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop29:
                                                                                       while(!_loc17_)
                                                                                       {
                                                                                          _loc16_ = §§pop();
                                                                                          while(!(_loc17_ && b2PolygonShape))
                                                                                          {
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc4_);
                                                                                                if(_loc18_ || param2)
                                                                                                {
                                                                                                   if(_loc17_ && param1)
                                                                                                   {
                                                                                                      continue loop11;
                                                                                                   }
                                                                                                   if(!_loc18_)
                                                                                                   {
                                                                                                      continue loop13;
                                                                                                   }
                                                                                                   §§push(_loc16_);
                                                                                                   if(_loc17_)
                                                                                                   {
                                                                                                      continue loop27;
                                                                                                   }
                                                                                                   if(_loc18_)
                                                                                                   {
                                                                                                      if(_loc17_ && b2PolygonShape)
                                                                                                      {
                                                                                                         continue loop12;
                                                                                                      }
                                                                                                      §§push(§§pop() + §§pop());
                                                                                                      if(!_loc17_)
                                                                                                      {
                                                                                                         if(_loc17_)
                                                                                                         {
                                                                                                            continue loop29;
                                                                                                         }
                                                                                                         if(!_loc18_)
                                                                                                         {
                                                                                                            continue loop28;
                                                                                                         }
                                                                                                         if(_loc18_)
                                                                                                         {
                                                                                                            addr233:
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(_loc18_)
                                                                                                            {
                                                                                                               continue loop1;
                                                                                                            }
                                                                                                            §§goto(addr352);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            while(true)
                                                                                                            {
                                                                                                               continue loop25;
                                                                                                            }
                                                                                                            addr329:
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr233);
                                                                                                   }
                                                                                                   §§goto(addr297);
                                                                                                }
                                                                                                §§goto(addr233);
                                                                                             }
                                                                                             if(_loc18_ || b2PolygonShape)
                                                                                             {
                                                                                                continue loop26;
                                                                                             }
                                                                                          }
                                                                                          continue loop10;
                                                                                       }
                                                                                       continue loop6;
                                                                                    }
                                                                                    continue loop3;
                                                                                 }
                                                                                 while(!_loc17_)
                                                                                 {
                                                                                    §§goto(addr329);
                                                                                    §§push(§§pop() - §§pop());
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 addr265:
                                                                                 §§goto(addr343);
                                                                                 addr326:
                                                                              }
                                                                              break;
                                                                           }
                                                                           continue loop25;
                                                                        }
                                                                        §§goto(addr276);
                                                                     }
                                                                     §§goto(addr289);
                                                                  }
                                                               }
                                                            }
                                                         }
                                                      }
                                                   }
                                                }
                                             }
                                          }
                                          if(_loc17_ && _loc3_)
                                          {
                                             continue;
                                          }
                                          §§push(_loc12_);
                                          if(_loc18_)
                                          {
                                             if(_loc17_ && param2)
                                             {
                                                continue loop7;
                                             }
                                             §§push(§§pop() * _loc13_);
                                          }
                                          §§goto(addr326);
                                       }
                                       continue loop4;
                                    }
                                    continue loop2;
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               §§goto(addr286);
            }
            §§goto(addr91);
         }
         if(!_loc17_)
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(!(_loc17_ && param1))
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!(_loc17_ && param2))
            {
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc17_ && b2PolygonShape))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
         }
         return _loc3_;
      }
      
      b2internal static function §?"#§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
      {
         var _loc26_:Boolean = false;
         var _loc27_:Boolean = true;
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
         var _loc20_:Number = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:b2Mat22 = null;
         var _loc5_:Vector.<b2Vec2> = new Vector.<b2Vec2>(param3 + 1);
         if(!(_loc26_ && param1))
         {
            _loc4_ = 0;
         }
         while(true)
         {
            if(_loc4_ >= param3)
            {
               if(!_loc26_)
               {
                  _loc5_[param3] = _loc5_[0];
               }
               if(!(_loc26_ && param3))
               {
                  if(_loc27_)
                  {
                     if(true)
                     {
                        break;
                     }
                  }
                  else
                  {
                     addr111:
                  }
                  _loc4_++;
               }
               continue;
            }
            _loc5_[_loc4_] = param2[_loc4_];
            §§goto(addr111);
         }
         var _loc6_:* = Number(Number.MAX_VALUE);
         if(!(_loc26_ && param1))
         {
            §§push(1);
            if(!_loc26_)
            {
               _loc4_ = §§pop();
               if(!_loc26_)
               {
                  addr132:
                  loop88:
                  while(true)
                  {
                     §§push(_loc4_);
                     addr1164:
                     while(§§pop() <= param3)
                     {
                        _loc7_ = _loc5_[int(_loc4_ - 1)];
                        if(!_loc26_)
                        {
                           §§push(_loc5_[_loc4_].x - _loc7_.x);
                           loop2:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              loop3:
                              while(true)
                              {
                                 _loc8_ = §§pop();
                                 loop4:
                                 while(true)
                                 {
                                    §§push(_loc5_[_loc4_].y - _loc7_.y);
                                    loop5:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       loop6:
                                       while(true)
                                       {
                                          _loc9_ = §§pop();
                                          loop7:
                                          while(true)
                                          {
                                             §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                             loop8:
                                             while(true)
                                             {
                                                _loc10_ = §§pop();
                                                loop9:
                                                while(true)
                                                {
                                                   §§push(_loc8_);
                                                   loop10:
                                                   while(true)
                                                   {
                                                      §§push(_loc10_);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() / §§pop());
                                                         loop12:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            loop13:
                                                            while(true)
                                                            {
                                                               _loc8_ = §§pop();
                                                               loop14:
                                                               while(true)
                                                               {
                                                                  §§push(_loc9_);
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc10_);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(§§pop() / §§pop());
                                                                        loop17:
                                                                        while(true)
                                                                        {
                                                                           §§push(Number(§§pop()));
                                                                           loop18:
                                                                           while(true)
                                                                           {
                                                                              §§push(§§pop());
                                                                              loop19:
                                                                              while(true)
                                                                              {
                                                                                 _loc9_ = §§pop();
                                                                                 loop20:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(-§§pop());
                                                                                    loop21:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       loop22:
                                                                                       while(true)
                                                                                       {
                                                                                          _loc11_ = §§pop();
                                                                                          loop23:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc8_);
                                                                                             loop24:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                loop25:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc12_ = §§pop();
                                                                                                   loop26:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(Number(Number.MAX_VALUE));
                                                                                                      loop27:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         _loc13_ = §§pop();
                                                                                                         loop28:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(Number(Number.MAX_VALUE));
                                                                                                            loop29:
                                                                                                            for(; _loc27_; if(_loc26_ && param1)
                                                                                                            {
                                                                                                               continue;
                                                                                                            },§§goto(addr719),§§push(Number(§§pop())))
                                                                                                            {
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  continue loop2;
                                                                                                               }
                                                                                                               _loc14_ = §§pop();
                                                                                                               loop30:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(-Number.MAX_VALUE);
                                                                                                                  loop31:
                                                                                                                  while(_loc27_ || b2PolygonShape)
                                                                                                                  {
                                                                                                                     §§push(Number(§§pop()));
                                                                                                                     loop32:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(_loc26_)
                                                                                                                        {
                                                                                                                           continue loop12;
                                                                                                                        }
                                                                                                                        if(!(_loc27_ || param2))
                                                                                                                        {
                                                                                                                           continue loop6;
                                                                                                                        }
                                                                                                                        _loc15_ = §§pop();
                                                                                                                        if(_loc26_ && param3)
                                                                                                                        {
                                                                                                                           continue loop88;
                                                                                                                        }
                                                                                                                        §§push(-Number.MAX_VALUE);
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(Number(§§pop()));
                                                                                                                           continue loop24;
                                                                                                                           addr179:
                                                                                                                           if(!(_loc27_ || param3))
                                                                                                                           {
                                                                                                                              continue;
                                                                                                                           }
                                                                                                                           §§push(_loc14_);
                                                                                                                           if(!_loc26_)
                                                                                                                           {
                                                                                                                              if(!_loc26_)
                                                                                                                              {
                                                                                                                                 if(!(_loc26_ && param2))
                                                                                                                                 {
                                                                                                                                    if(_loc27_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc16_);
                                                                                                                                       if(_loc27_)
                                                                                                                                       {
                                                                                                                                          addr204:
                                                                                                                                          §§push(§§pop() + §§pop());
                                                                                                                                          if(_loc27_ || param2)
                                                                                                                                          {
                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                             {
                                                                                                                                                if(!(_loc26_ && param2))
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   if(_loc27_ || param3)
                                                                                                                                                   {
                                                                                                                                                      if(_loc27_)
                                                                                                                                                      {
                                                                                                                                                         addr235:
                                                                                                                                                         if(!(_loc26_ && param1))
                                                                                                                                                         {
                                                                                                                                                            if(_loc27_ || b2PolygonShape)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc26_ && param2))
                                                                                                                                                               {
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop20;
                                                                                                                                                                  }
                                                                                                                                                                  addr259:
                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     if(!_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop31;
                                                                                                                                                                        }
                                                                                                                                                                        _loc24_ = §§pop();
                                                                                                                                                                        if(_loc26_ && param3)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop88;
                                                                                                                                                                        }
                                                                                                                                                                        if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                        {
                                                                                                                                                                           addr285:
                                                                                                                                                                           if(_loc27_ || param2)
                                                                                                                                                                           {
                                                                                                                                                                              if(false)
                                                                                                                                                                              {
                                                                                                                                                                                 loop80:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0.5);
                                                                                                                                                                                    loop81:
                                                                                                                                                                                    while(_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!(_loc26_ && param1))
                                                                                                                                                                                       {
                                                                                                                                                                                          if(!(_loc26_ && param2))
                                                                                                                                                                                          {
                                                                                                                                                                                             addr313:
                                                                                                                                                                                             §§push(_loc13_);
                                                                                                                                                                                             loop82:
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                if(!(_loc26_ && param2))
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!(_loc26_ && param1))
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc15_);
                                                                                                                                                                                                      loop83:
                                                                                                                                                                                                      while(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(_loc27_ || param2)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                                                                            loop84:
                                                                                                                                                                                                            while(!(_loc26_ && param2))
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     loop85:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_ || param1)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr357:
                                                                                                                                                                                                                           if(!(_loc26_ && param1))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              addr364:
                                                                                                                                                                                                                              if(_loc27_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(!(_loc26_ && param1))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc23_ = §§pop();
                                                                                                                                                                                                                                             addr389:
                                                                                                                                                                                                                                             loop87:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr398:
                                                                                                                                                                                                                                                      if(_loc27_ || param3)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr614:
                                                                                                                                                                                                                                                               §§push(0.5);
                                                                                                                                                                                                                                                               if(_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop81;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc27_ || param2)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc27_ || param1)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§goto(addr179);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr778:
                                                                                                                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                           loop57:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc21_ = §§pop();
                                                                                                                                                                                                                                                                              loop58:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr741:
                                                                                                                                                                                                                                                                                 §§push(_loc11_ * _loc19_);
                                                                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr747:
                                                                                                                                                                                                                                                                                    break;
                                                                                                                                                                                                                                                                                    addr773:
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§push(_loc12_ * _loc20_);
                                                                                                                                                                                                                                                                                 loop59:
                                                                                                                                                                                                                                                                                 for(; !(_loc26_ && param3); if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue;
                                                                                                                                                                                                                                                                                 },if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    addr657:
                                                                                                                                                                                                                                                                                    if(_loc27_ || param3)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr665:
                                                                                                                                                                                                                                                                                       §§goto(addr666);
                                                                                                                                                                                                                                                                                       §§push(Number(_loc22_));
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr758);
                                                                                                                                                                                                                                                                                 },§§goto(addr632))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                                                    loop60:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                       loop61:
                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          _loc22_ = §§pop();
                                                                                                                                                                                                                                                                                          addr758:
                                                                                                                                                                                                                                                                                          loop62:
                                                                                                                                                                                                                                                                                          while(!_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(_loc21_);
                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop60;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(§§pop() < _loc13_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr730:
                                                                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop61;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop57;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   _loc13_ = §§pop();
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr736:
                                                                                                                                                                                                                                                                                                if(_loc26_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop58;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             if(_loc22_ < _loc14_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                loop63:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(!_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         break;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr705:
                                                                                                                                                                                                                                                                                                         §§push(_loc22_);
                                                                                                                                                                                                                                                                                                         if(!_loc26_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                  addr812:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     _loc19_ = §§pop();
                                                                                                                                                                                                                                                                                                                     break loop63;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               addr811:
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               continue loop29;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop24;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop5;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr798:
                                                                                                                                                                                                                                                                                                   while(_loc27_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc8_ * _loc19_);
                                                                                                                                                                                                                                                                                                      break loop81;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue loop26;
                                                                                                                                                                                                                                                                                                   addr634:
                                                                                                                                                                                                                                                                                                   if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr641:
                                                                                                                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop23;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr643:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(_loc17_);
                                                                                                                                                                                                                                                                                                      if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop() >= param3)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            break loop87;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr811);
                                                                                                                                                                                                                                                                                                         §§push(_loc5_[_loc17_].x - _loc7_.x);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                      §§goto(addr643);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      _loc17_ = §§pop();
                                                                                                                                                                                                                                                                                                      break loop62;
                                                                                                                                                                                                                                                                                                      §§goto(addr509);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   addr509:
                                                                                                                                                                                                                                                                                                   addr823:
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(Number(_loc5_[_loc17_].y - _loc7_.y));
                                                                                                                                                                                                                                                                                                   continue loop5;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr823);
                                                                                                                                                                                                                                                                                                   §§goto(addr813);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr813:
                                                                                                                                                                                                                                                                                                addr847:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                addr674:
                                                                                                                                                                                                                                                                                                §§push(_loc21_);
                                                                                                                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                                                                                                                if(!(_loc27_ || param1))
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop16;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                if(§§pop() > §§pop())
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   addr683:
                                                                                                                                                                                                                                                                                                   §§push(_loc21_);
                                                                                                                                                                                                                                                                                                   loop65:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      addr685:
                                                                                                                                                                                                                                                                                                      §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         _loc15_ = §§pop();
                                                                                                                                                                                                                                                                                                         addr688:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc22_);
                                                                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc16_);
                                                                                                                                                                                                                                                                                                               continue loop59;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr666:
                                                                                                                                                                                                                                                                                                            addr666:
                                                                                                                                                                                                                                                                                                            if(!_loc26_)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               break;
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            continue loop65;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         if(!_loc27_)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            continue loop27;
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         _loc16_ = §§pop();
                                                                                                                                                                                                                                                                                                         _loc17_++;
                                                                                                                                                                                                                                                                                                         §§goto(addr634);
                                                                                                                                                                                                                                                                                                         addr644:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr812);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr644);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr641);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(!_loc26_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr643);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop30;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 while(!_loc26_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr778);
                                                                                                                                                                                                                                                                                    §§push(§§pop() + §§pop() * _loc20_);
                                                                                                                                                                                                                                                                                    §§goto(addr748);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr748:
                                                                                                                                                                                                                                                                                 continue loop19;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop8;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr674);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr685);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  loop69:
                                                                                                                                                                                                                                                                  while(_loc27_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!_loc27_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop10;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc6_ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(param1.R);
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(§§pop().col1);
                                                                                                                                                                                                                                                                              loop72:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc8_);
                                                                                                                                                                                                                                                                                 loop73:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                    if(_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       continue loop88;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(param1.R);
                                                                                                                                                                                                                                                                                          loop74:
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop().col1);
                                                                                                                                                                                                                                                                                             if(!(_loc27_ || b2PolygonShape))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop73;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                             while(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(param1.R);
                                                                                                                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         §§push(§§pop().col2);
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                                                                                                                            addr458:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                                                                                                                               addr459:
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(param1.R);
                                                                                                                                                                                                                                                                                                                        if(_loc26_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop74;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     continue loop28;
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr634);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         addr457:
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      addr953:
                                                                                                                                                                                                                                                                                                      _loc25_ = §§pop();
                                                                                                                                                                                                                                                                                                      if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         addr1127:
                                                                                                                                                                                                                                                                                                         §§push(param1.center);
                                                                                                                                                                                                                                                                                                         §§push(_loc7_.x);
                                                                                                                                                                                                                                                                                                         §§push(_loc25_.col1.x);
                                                                                                                                                                                                                                                                                                         §§push(_loc23_);
                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr1159:
                                                                                                                                                                                                                                                                                                            addr1160:
                                                                                                                                                                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                            if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               addr1158:
                                                                                                                                                                                                                                                                                                               §§push(§§pop() + _loc25_.col2.x * _loc24_);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                                                                                                            addr1161:
                                                                                                                                                                                                                                                                                                            §§push(param1.center);
                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               §§push(_loc7_.y);
                                                                                                                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc27_ || param1)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc25_.col1);
                                                                                                                                                                                                                                                                                                                        if(_loc27_ || param2)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                           if(!_loc26_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 §§push(_loc23_);
                                                                                                                                                                                                                                                                                                                                 if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    if(!(_loc26_ && param2))
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                       if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                             §§push(_loc25_.col2);
                                                                                                                                                                                                                                                                                                                                             if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                                                                §§push(§§pop().y);
                                                                                                                                                                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                                                                   §§push(_loc24_);
                                                                                                                                                                                                                                                                                                                                                   if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                                                                      addr1114:
                                                                                                                                                                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                      if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                                                                         addr1118:
                                                                                                                                                                                                                                                                                                                                                         §§pop().y = §§pop() + (§§pop() + §§pop());
                                                                                                                                                                                                                                                                                                                                                         addr1022:
                                                                                                                                                                                                                                                                                                                                                         param1.§]P§.x = 0.5 * (_loc15_ - _loc13_);
                                                                                                                                                                                                                                                                                                                                                         addr1014:
                                                                                                                                                                                                                                                                                                                                                         addr1019:
                                                                                                                                                                                                                                                                                                                                                         addr1021:
                                                                                                                                                                                                                                                                                                                                                         addr1020:
                                                                                                                                                                                                                                                                                                                                                         addr1018:
                                                                                                                                                                                                                                                                                                                                                         addr1017:
                                                                                                                                                                                                                                                                                                                                                         if(!(_loc26_ && b2PolygonShape))
                                                                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                                                                            §§push(param1.§]P§);
                                                                                                                                                                                                                                                                                                                                                            if(!(_loc26_ && param3))
                                                                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                                                                               §§push(0.5);
                                                                                                                                                                                                                                                                                                                                                               if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                                                                  if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                                                                     §§push(_loc16_);
                                                                                                                                                                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                                                                        §§push(_loc14_);
                                                                                                                                                                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                                                                           addr990:
                                                                                                                                                                                                                                                                                                                                                                           §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                                                                                                           if(_loc27_)
                                                                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                                                                 addr995:
                                                                                                                                                                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                                                                                 if(!(_loc26_ && param1))
                                                                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                                                                    §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                                                                       if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                                                                          addr1012:
                                                                                                                                                                                                                                                                                                                                                                                          if(false)
                                                                                                                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                                                                                                                             §§goto(addr1014);
                                                                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                                                                          _loc4_++;
                                                                                                                                                                                                                                                                                                                                                                                          continue loop88;
                                                                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                                                                       §§goto(addr1161);
                                                                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                                                                    §§goto(addr1014);
                                                                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                                                                 §§goto(addr1022);
                                                                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                                                                              §§goto(addr1019);
                                                                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                                                                           §§goto(addr1021);
                                                                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                                                                        §§goto(addr1020);
                                                                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                                                                     §§goto(addr990);
                                                                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                                                                  §§goto(addr1018);
                                                                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                                                                               §§goto(addr995);
                                                                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                                                                            §§goto(addr1017);
                                                                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                                                                         addr1119:
                                                                                                                                                                                                                                                                                                                                                         §§goto(addr1119);
                                                                                                                                                                                                                                                                                                                                                         addr1117:
                                                                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                                                                   §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                                                                §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                                                                             §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                                                                          §§goto(addr1159);
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       §§goto(addr1117);
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                    §§goto(addr1158);
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§goto(addr1114);
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              §§goto(addr1127);
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr1022);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr1127);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  §§goto(addr1160);
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr1118);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            §§goto(addr1127);
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         §§goto(addr1158);
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      §§goto(addr1012);
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   §§goto(addr736);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr671);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             while(!_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§push(_loc18_);
                                                                                                                                                                                                                                                                                                   addr618:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      continue loop69;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr672);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          continue loop72;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop14;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr683);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§push(§§pop().col2);
                                                                                                                                                                                                                                                                              if(!_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc12_);
                                                                                                                                                                                                                                                                                 if(_loc26_ && b2PolygonShape)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§goto(addr458);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§pop().y = §§pop();
                                                                                                                                                                                                                                                                                 break loop80;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr457);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr741);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr666);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               else
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§goto(addr259);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr614:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr688);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr657);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr484);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr459);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc15_);
                                                                                                                                                                                                                                                §§goto(addr398);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          continue loop80;
                                                                                                                                                                                                                                          addr388:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       continue loop13;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    while(_loc27_)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§push(_loc13_);
                                                                                                                                                                                                                                       while(!_loc26_)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(_loc27_ || param3)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc16_);
                                                                                                                                                                                                                                                break loop84;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             addr536:
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr777);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr692);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr741);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr536);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              while(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                                                                       break loop85;
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop21;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 continue loop25;
                                                                                                                                                                                                                                 §§goto(addr364);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr723);
                                                                                                                                                                                                                              addr556:
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr618);
                                                                                                                                                                                                                        §§goto(addr235);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(_loc27_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           if(_loc27_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop());
                                                                                                                                                                                                                                 break loop82;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              continue loop32;
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr733);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        break;
                                                                                                                                                                                                                        §§goto(addr357);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr692);
                                                                                                                                                                                                                     addr350:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr764);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr726);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(_loc14_);
                                                                                                                                                                                                               if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc26_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                                                                                                                     if(_loc27_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr556);
                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     break loop82;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  break;
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break loop83;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr747);
                                                                                                                                                                                                            addr338:
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr777);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§goto(addr614);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr613:
                                                                                                                                                                                                      addr328:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr649);
                                                                                                                                                                                                }
                                                                                                                                                                                                break;
                                                                                                                                                                                                §§goto(addr204);
                                                                                                                                                                                             }
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                                                                addr591:
                                                                                                                                                                                                while(!_loc26_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop15;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§push(0.95);
                                                                                                                                                                                                   if(_loc27_ || b2PolygonShape)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      if(_loc27_)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         if(!(_loc27_ || param1))
                                                                                                                                                                                                         {
                                                                                                                                                                                                            continue loop11;
                                                                                                                                                                                                         }
                                                                                                                                                                                                         §§goto(addr613);
                                                                                                                                                                                                         §§push(_loc6_);
                                                                                                                                                                                                      }
                                                                                                                                                                                                      §§goto(addr741);
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr614);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr705);
                                                                                                                                                                                                §§goto(addr313);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr313:
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr789);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr764);
                                                                                                                                                                                    }
                                                                                                                                                                                    if(_loc26_ && param1)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop3;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr773);
                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                 }
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc26_)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc27_)
                                                                                                                                                                                       {
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr294);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr631);
                                                                                                                                                                                    §§goto(addr285);
                                                                                                                                                                                 }
                                                                                                                                                                                 addr294:
                                                                                                                                                                                 continue loop9;
                                                                                                                                                                                 addr446:
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr953);
                                                                                                                                                                              §§push(param1.R);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr446);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr389);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr665);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr591);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr730);
                                                                                                                                                            }
                                                                                                                                                            addr719:
                                                                                                                                                            _loc14_ = §§pop();
                                                                                                                                                            §§goto(addr720);
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr350);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr388);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr259);
                                                                                                                                                }
                                                                                                                                                §§goto(addr747);
                                                                                                                                             }
                                                                                                                                             §§goto(addr674);
                                                                                                                                          }
                                                                                                                                          §§goto(addr313);
                                                                                                                                       }
                                                                                                                                       §§goto(addr328);
                                                                                                                                    }
                                                                                                                                    §§goto(addr526);
                                                                                                                                 }
                                                                                                                                 §§goto(addr614);
                                                                                                                              }
                                                                                                                              §§goto(addr338);
                                                                                                                           }
                                                                                                                           §§goto(addr204);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     continue loop88;
                                                                                                                  }
                                                                                                                  continue loop17;
                                                                                                               }
                                                                                                            }
                                                                                                            continue loop18;
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
                        §§goto(addr617);
                        continue loop88;
                     }
                  }
               }
               return;
            }
            §§goto(addr1164);
         }
         §§goto(addr132);
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = false;
         var _loc3_:Boolean = true;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(_loc3_ || this)
         {
            _loc1_.Set(this);
         }
         return _loc1_;
      }
      
      override public function Set(param1:b2Shape) : void
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc2_:b2PolygonShape = null;
         var _loc3_:int = 0;
         if(!_loc5_)
         {
            super.Set(param1);
            if(!_loc5_)
            {
               §§goto(addr28);
            }
            §§goto(addr32);
         }
         addr28:
         if(param1 is b2PolygonShape)
         {
            addr32:
            _loc2_ = param1 as b2PolygonShape;
            if(!(_loc5_ && param1))
            {
               this.§,[§.SetV(_loc2_.§,[§);
            }
            loop0:
            do
            {
               this.§"![§ = _loc2_.§"![§;
               while(true)
               {
                  this.§"'§(this.§"![§);
                  while(_loc4_ || _loc3_)
                  {
                     _loc3_ = 0;
                     if(_loc4_ || _loc3_)
                     {
                        continue loop0;
                     }
                  }
               }
            }
            while(_loc5_ && param1);
            
            while(true)
            {
               if(_loc3_ < this.§"![§)
               {
                  this.§^v§[_loc3_].SetV(_loc2_.§^v§[_loc3_]);
                  loop4:
                  while(true)
                  {
                     addr51:
                     while(true)
                     {
                        this.§6"0§[_loc3_].SetV(_loc2_.§6"0§[_loc3_]);
                        if(_loc5_)
                        {
                           break;
                        }
                        continue loop4;
                     }
                  }
               }
            }
         }
      }
      
      public function §9!X§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(_loc7_)
            {
               _loc3_.push(_loc4_);
            }
         }
         if(!(_loc8_ && this))
         {
            this.§4!n§(_loc3_,param2);
         }
      }
      
      public function §4!n§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
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
            if(_loc7_)
            {
               if(§§pop() == 0)
               {
                  addr232:
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr235:
                     while(true)
                     {
                        param2 = §§pop();
                        addr236:
                        while(true)
                        {
                        }
                     }
                  }
                  addr232:
               }
               loop0:
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  loop1:
                  while(true)
                  {
                     this.§"![§ = param2;
                     while(true)
                     {
                        if(!_loc7_)
                        {
                           break loop1;
                        }
                        this.§"'§(param2);
                        while(_loc7_)
                        {
                           if(!(_loc8_ && _loc3_))
                           {
                              if(_loc7_ || _loc3_)
                              {
                                 _loc3_ = 0;
                                 if(_loc8_ && _loc3_)
                                 {
                                    continue;
                                 }
                                 addr134:
                                 §§push(_loc3_);
                                 if(_loc7_ || param1)
                                 {
                                    addr145:
                                    if(§§pop() >= this.§"![§)
                                    {
                                       addr147:
                                       _loc3_ = 0;
                                       addr118:
                                       addr146:
                                       addr148:
                                       if(_loc3_ < this.§"![§)
                                       {
                                          addr123:
                                          _loc4_ = _loc3_;
                                          if(!(_loc8_ && _loc3_))
                                          {
                                             if(!_loc8_)
                                             {
                                                §§push(_loc3_);
                                                if(!_loc8_)
                                                {
                                                   §§push(1);
                                                   if(_loc7_)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      if(!(_loc8_ && _loc3_))
                                                      {
                                                         if(§§pop() < this.§"![§)
                                                         {
                                                            if(_loc7_ || param2)
                                                            {
                                                               if(!_loc8_)
                                                               {
                                                                  if(!_loc8_)
                                                                  {
                                                                     §§push(_loc3_);
                                                                     if(!_loc8_)
                                                                     {
                                                                        addr61:
                                                                        if(!(_loc8_ && param2))
                                                                        {
                                                                           if(_loc7_ || param2)
                                                                           {
                                                                              §§push(1);
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(!(_loc8_ && param1))
                                                                                 {
                                                                                    addr86:
                                                                                    §§push(int(§§pop() + §§pop()));
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       addr105:
                                                                                       §§push(int(§§pop()));
                                                                                       if(!_loc8_)
                                                                                       {
                                                                                          §§goto(addr108);
                                                                                       }
                                                                                    }
                                                                                    §§goto(addr118);
                                                                                 }
                                                                                 §§goto(addr145);
                                                                              }
                                                                              §§goto(addr118);
                                                                           }
                                                                           §§goto(addr147);
                                                                        }
                                                                        §§goto(addr123);
                                                                     }
                                                                     addr108:
                                                                     _loc5_ = §§pop();
                                                                     if(_loc7_ || _loc3_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr118);
                                                                        }
                                                                        _loc6_ = b2Math.§1"5§(this.§^v§[_loc5_],this.§^v§[_loc4_]);
                                                                        if(_loc7_)
                                                                        {
                                                                           b2Settings.b2Assert(_loc6_.§&l§() > Number.MIN_VALUE);
                                                                        }
                                                                        this.§6"0§[_loc3_].SetV(b2Math.§'f§(_loc6_,1));
                                                                        addr265:
                                                                        this.§6"0§[_loc3_].Normalize();
                                                                        addr289:
                                                                        if(!(_loc8_ && param1))
                                                                        {
                                                                           _loc3_++;
                                                                           if(_loc7_ || this)
                                                                           {
                                                                              if(_loc7_)
                                                                              {
                                                                                 if(false)
                                                                                 {
                                                                                    §§goto(addr265);
                                                                                 }
                                                                                 §§goto(addr118);
                                                                              }
                                                                              §§goto(addr289);
                                                                           }
                                                                           §§goto(addr265);
                                                                        }
                                                                        addr297:
                                                                        §§goto(addr297);
                                                                     }
                                                                     §§goto(addr314);
                                                                  }
                                                                  _loc3_++;
                                                                  if(_loc7_ || param1)
                                                                  {
                                                                     §§goto(addr134);
                                                                  }
                                                                  addr314:
                                                                  this.§,[§ = § !i§(this.§^v§,this.§"![§);
                                                                  return;
                                                                  addr180:
                                                               }
                                                               §§goto(addr146);
                                                            }
                                                            §§goto(addr108);
                                                         }
                                                         §§push(0);
                                                         if(!(_loc8_ && _loc3_))
                                                         {
                                                            if(!_loc8_)
                                                            {
                                                               §§goto(addr105);
                                                            }
                                                            §§goto(addr123);
                                                         }
                                                         §§goto(addr108);
                                                      }
                                                      §§goto(addr86);
                                                   }
                                                   §§goto(addr147);
                                                }
                                                §§goto(addr61);
                                             }
                                             §§goto(addr148);
                                          }
                                          §§goto(addr108);
                                       }
                                       if(!_loc7_)
                                       {
                                       }
                                       §§goto(addr108);
                                    }
                                    this.§^v§[_loc3_].SetV(param1[_loc3_]);
                                    §§goto(addr180);
                                 }
                                 §§goto(addr147);
                                 continue;
                              }
                              continue loop0;
                           }
                           continue loop1;
                        }
                     }
                  }
                  §§goto(addr232);
               }
            }
            §§goto(addr235);
         }
         §§goto(addr232);
      }
      
      public function §=!^§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_ || param2)
         {
            this.§"![§ = 4;
            loop0:
            while(true)
            {
               this.§"'§(4);
               loop1:
               while(true)
               {
                  this.§^v§[0].Set(-param1,-param2);
                  loop2:
                  while(true)
                  {
                     this.§^v§[1].Set(param1,-param2);
                     loop3:
                     while(true)
                     {
                        this.§^v§[2].Set(param1,param2);
                        loop4:
                        while(_loc3_)
                        {
                           this.§^v§[3].Set(-param1,param2);
                           while(_loc3_)
                           {
                              this.§6"0§[0].Set(0,-1);
                              while(_loc3_)
                              {
                                 this.§6"0§[1].Set(1,0);
                                 continue loop1;
                                 if(_loc3_ || this)
                                 {
                                    return;
                                    addr41:
                                 }
                              }
                              continue loop4;
                              addr70:
                              if(!(_loc3_ || param1))
                              {
                                 continue;
                              }
                              while(true)
                              {
                                 this.§6"0§[3].Set(-1,0);
                                 while(_loc3_)
                                 {
                                    continue loop0;
                                    this.§,[§.§>![§();
                                    if(_loc4_)
                                    {
                                       continue;
                                    }
                                    §§goto(addr34);
                                 }
                                 addr68:
                                 while(_loc3_)
                                 {
                                    §§goto(addr70);
                                 }
                                 continue loop1;
                              }
                              §§goto(addr41);
                           }
                           continue loop3;
                        }
                        continue loop2;
                     }
                  }
               }
            }
         }
         §§goto(addr77);
      }
      
      public function §+!%§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = false;
         var _loc8_:Boolean = true;
         if(_loc8_)
         {
            this.§"![§ = 4;
            loop0:
            while(true)
            {
               this.§"'§(4);
               loop1:
               while(true)
               {
                  this.§^v§[0].Set(-param1,-param2);
                  while(true)
                  {
                     this.§^v§[1].Set(param1,-param2);
                     continue loop0;
                     loop7:
                     while(_loc8_ || param2)
                     {
                        this.§6"0§[1].Set(1,0);
                        loop8:
                        while(!_loc7_)
                        {
                           this.§6"0§[2].Set(0,1);
                           loop9:
                           while(_loc8_)
                           {
                              loop10:
                              while(true)
                              {
                                 this.§6"0§[3].Set(-1,0);
                                 while(_loc8_)
                                 {
                                    if(!_loc7_)
                                    {
                                       this.§,[§ = param3;
                                       if(_loc8_ || param1)
                                       {
                                          if(!_loc7_)
                                          {
                                             continue loop10;
                                          }
                                          continue loop9;
                                       }
                                       continue;
                                    }
                                    continue loop0;
                                 }
                                 continue loop7;
                              }
                              continue loop8;
                           }
                           while(true)
                           {
                              this.§6"0§[0].Set(0,-1);
                              continue loop7;
                           }
                        }
                        while(!_loc7_)
                        {
                           this.§^v§[3].Set(-param1,param2);
                           §§goto(addr97);
                        }
                        continue loop1;
                     }
                  }
               }
            }
         }
         while(true)
         {
            this.§^v§[2].Set(param1,param2);
            §§goto(addr106);
         }
      }
      
      public function §!",§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§"![§ = 2;
            loop0:
            while(true)
            {
               this.§"'§(2);
               loop1:
               while(true)
               {
                  this.§^v§[0].SetV(param1);
                  loop2:
                  while(_loc3_)
                  {
                     this.§^v§[1].SetV(param2);
                     while(true)
                     {
                        §§push(this.§,[§);
                        addr144:
                        loop4:
                        while(true)
                        {
                           §§push(0.5);
                           addr145:
                           while(true)
                           {
                              §§push(param1.x);
                              addr147:
                              while(true)
                              {
                                 §§push(param2.x);
                                 addr149:
                                 while(true)
                                 {
                                    §§push(§§pop() + §§pop());
                                    addr150:
                                    while(true)
                                    {
                                       §§push(§§pop() * §§pop());
                                       addr151:
                                       while(true)
                                       {
                                          §§pop().x = §§pop();
                                          addr152:
                                          while(_loc3_)
                                          {
                                             continue loop4;
                                          }
                                          continue loop2;
                                       }
                                    }
                                 }
                              }
                           }
                        }
                        addr59:
                        if(!(_loc4_ && this))
                        {
                           this.§6"0§[1].y = -this.§6"0§[0].y;
                           addr66:
                           if(_loc3_)
                           {
                              return;
                           }
                           loop15:
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 addr52:
                                 if(_loc3_ || param2)
                                 {
                                    §§goto(addr59);
                                 }
                                 else
                                 {
                                    while(true)
                                    {
                                       this.§6"0§[0].Normalize();
                                       break loop15;
                                       §§goto(addr52);
                                    }
                                    addr100:
                                 }
                              }
                              break;
                              §§goto(addr66);
                           }
                           while(true)
                           {
                              if(!_loc4_)
                              {
                                 if(!_loc3_)
                                 {
                                    break;
                                 }
                                 this.§6"0§[1].x = -this.§6"0§[0].x;
                                 §§goto(addr50);
                              }
                              else
                              {
                                 while(!_loc4_)
                                 {
                                    this.§6"0§[0] = b2Math.§'f§(b2Math.§1"5§(param2,param1),1);
                                 }
                                 §§goto(addr152);
                                 addr138:
                              }
                              §§goto(addr100);
                           }
                           addr50:
                           continue loop1;
                        }
                     }
                  }
                  continue loop0;
               }
            }
         }
         while(true)
         {
            §§push(this.§,[§);
            if(!_loc4_)
            {
               §§push(0.5);
               if(_loc3_)
               {
                  if(_loc3_ || this)
                  {
                     if(_loc3_)
                     {
                        §§push(param1.y);
                        if(!_loc4_)
                        {
                           if(_loc3_)
                           {
                              if(!_loc4_)
                              {
                                 §§push(param2.y);
                                 if(!(_loc4_ && this))
                                 {
                                    addr137:
                                    §§pop().y = §§pop() * (§§pop() + §§pop());
                                    addr136:
                                    §§goto(addr138);
                                 }
                                 §§goto(addr149);
                              }
                              §§goto(addr147);
                           }
                           §§goto(addr150);
                        }
                        §§goto(addr136);
                     }
                     §§goto(addr145);
                  }
                  §§goto(addr151);
               }
               §§goto(addr137);
            }
            §§goto(addr144);
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
         if(!(_loc11_ && param2))
         {
            §§push(§§pop() - param1.position.y);
            if(_loc12_ || _loc3_)
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         §§push(_loc5_);
         if(!(_loc11_ && this))
         {
            §§push(_loc4_.col1.x);
            if(!_loc11_)
            {
               §§push(§§pop() * §§pop());
               if(!(_loc11_ && this))
               {
                  §§push(_loc6_);
                  if(_loc12_ || param2)
                  {
                     addr94:
                     §§push(§§pop() * _loc4_.col1.y);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc12_ || param1)
                  {
                  }
                  addr107:
                  var _loc7_:* = §§pop();
                  §§push(_loc5_);
                  if(_loc12_ || this)
                  {
                     §§push(_loc4_.col2.x);
                     if(_loc12_ || _loc3_)
                     {
                        §§push(§§pop() * §§pop());
                        if(!(_loc11_ && param1))
                        {
                           addr134:
                           §§push(_loc6_);
                           if(_loc12_ || _loc3_)
                           {
                              addr142:
                              §§push(§§pop() * _loc4_.col2.y);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc12_)
                           {
                              §§push(Number(§§pop()));
                           }
                        }
                        var _loc8_:* = §§pop();
                        var _loc9_:int = 0;
                        while(true)
                        {
                           if(_loc9_ >= this.§"![§)
                           {
                              return true;
                           }
                           _loc3_ = this.§^v§[_loc9_];
                           if(!(_loc11_ && param1))
                           {
                              §§push(_loc7_);
                              if(_loc12_ || this)
                              {
                                 §§push(_loc3_.x);
                                 if(_loc12_ || param2)
                                 {
                                    §§push(§§pop() - §§pop());
                                    if(!(_loc11_ && param1))
                                    {
                                       §§push(Number(§§pop()));
                                       if(_loc12_)
                                       {
                                          addr206:
                                          _loc5_ = §§pop();
                                          if(_loc12_)
                                          {
                                             §§push(_loc8_);
                                             if(_loc12_ || param2)
                                             {
                                                addr217:
                                                §§push(§§pop() - _loc3_.y);
                                                if(_loc12_)
                                                {
                                                   addr222:
                                                   §§push(Number(§§pop()));
                                                }
                                             }
                                             _loc6_ = §§pop();
                                             addr224:
                                             _loc3_ = this.§6"0§[_loc9_];
                                             if(_loc11_ && this)
                                             {
                                                continue;
                                             }
                                             §§push(_loc3_.x);
                                             if(!(_loc11_ && this))
                                             {
                                                §§push(_loc5_);
                                                if(!(_loc11_ && _loc3_))
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc12_)
                                                   {
                                                      addr257:
                                                      §§push(_loc3_.y);
                                                      if(!_loc11_)
                                                      {
                                                         addr261:
                                                         §§push(§§pop() * _loc6_);
                                                         if(_loc12_ || param1)
                                                         {
                                                            addr270:
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc11_ && param2))
                                                            {
                                                               addr278:
                                                               §§push(Number(§§pop()));
                                                               if(_loc12_)
                                                               {
                                                                  §§push(§§pop());
                                                                  if(_loc12_)
                                                                  {
                                                                     addr284:
                                                                     _loc10_ = §§pop();
                                                                     addr285:
                                                                     §§push(0);
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(_loc12_ || _loc3_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  _loc9_++;
                                                                  continue;
                                                               }
                                                            }
                                                            §§goto(addr285);
                                                         }
                                                         §§goto(addr284);
                                                      }
                                                      §§goto(addr270);
                                                   }
                                                   §§goto(addr278);
                                                }
                                                §§goto(addr261);
                                             }
                                             §§goto(addr257);
                                          }
                                          §§goto(addr224);
                                       }
                                       §§goto(addr217);
                                    }
                                    §§goto(addr206);
                                 }
                                 §§goto(addr217);
                              }
                              §§goto(addr222);
                           }
                           §§goto(addr224);
                        }
                        return false;
                     }
                     §§goto(addr142);
                  }
                  §§goto(addr134);
               }
               §§goto(addr107);
               §§push(Number(§§pop()));
            }
            §§goto(addr94);
         }
         §§goto(addr107);
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
         if(_loc21_ || param3)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§9!Y§);
         if(_loc21_ || this)
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
                  if(_loc21_)
                  {
                     §§push(§§pop().x);
                     if(!_loc20_)
                     {
                        §§push(§§pop() - §§pop());
                        if(!(_loc20_ && param3))
                        {
                           §§push(Number(§§pop()));
                           if(!_loc20_)
                           {
                              _loc6_ = §§pop();
                              if(!(_loc20_ && param1))
                              {
                                 addr94:
                                 §§push(param2.p1.y);
                                 if(_loc21_ || param2)
                                 {
                                    addr105:
                                    §§push(§§pop() - param3.position.y);
                                    if(!(_loc20_ && this))
                                    {
                                       addr113:
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr113);
                              }
                              addr115:
                              _loc8_ = param3.R;
                              §§push(_loc6_);
                              if(!(_loc20_ && this))
                              {
                                 §§push(_loc8_.col1.x);
                                 if(!(_loc20_ && param3))
                                 {
                                    §§push(§§pop() * §§pop());
                                    if(!_loc20_)
                                    {
                                       addr140:
                                       §§push(_loc7_);
                                       if(_loc21_ || param3)
                                       {
                                          addr152:
                                          §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                          if(!_loc20_)
                                          {
                                             addr155:
                                             §§push(Number(§§pop()));
                                          }
                                          var _loc10_:* = §§pop();
                                          §§push(_loc6_);
                                          if(!(_loc20_ && param3))
                                          {
                                             §§push(_loc8_.col2.x);
                                             if(_loc21_ || param2)
                                             {
                                                §§push(§§pop() * §§pop());
                                                if(_loc21_ || param3)
                                                {
                                                   §§push(_loc7_);
                                                   if(_loc21_ || param1)
                                                   {
                                                      addr195:
                                                      §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                      if(_loc20_)
                                                      {
                                                      }
                                                      var _loc11_:* = §§pop();
                                                      if(_loc21_ || param3)
                                                      {
                                                         §§push(param2.p2);
                                                         if(_loc21_ || param1)
                                                         {
                                                            §§push(§§pop().x);
                                                            if(!_loc20_)
                                                            {
                                                               §§push(param3.position);
                                                               if(_loc21_ || param3)
                                                               {
                                                                  §§push(§§pop().x);
                                                                  if(!_loc20_)
                                                                  {
                                                                     §§push(§§pop() - §§pop());
                                                                     if(_loc21_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                        if(!(_loc20_ && this))
                                                                        {
                                                                           _loc6_ = §§pop();
                                                                           if(_loc21_)
                                                                           {
                                                                              addr247:
                                                                              §§push(param2.p2.y);
                                                                              if(!_loc20_)
                                                                              {
                                                                                 addr250:
                                                                                 addr253:
                                                                                 addr252:
                                                                                 §§push(§§pop() - param3.position.y);
                                                                                 if(_loc20_)
                                                                                 {
                                                                                 }
                                                                                 addr257:
                                                                                 _loc7_ = §§pop();
                                                                                 _loc8_ = param3.R;
                                                                                 §§push(_loc6_);
                                                                                 if(_loc21_)
                                                                                 {
                                                                                    §§push(_loc8_.col1.x);
                                                                                    if(_loc21_ || param1)
                                                                                    {
                                                                                       addr293:
                                                                                       §§push(§§pop() * §§pop());
                                                                                       if(_loc21_)
                                                                                       {
                                                                                          §§push(_loc7_);
                                                                                          if(!(_loc20_ && param2))
                                                                                          {
                                                                                             §§push(§§pop() * _loc8_.col1.y);
                                                                                          }
                                                                                       }
                                                                                       var _loc12_:Number = §§pop();
                                                                                       §§push(_loc6_);
                                                                                       if(_loc21_ || this)
                                                                                       {
                                                                                          §§push(_loc8_.col2.x);
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(§§pop() * §§pop());
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                addr311:
                                                                                                §§push(_loc7_);
                                                                                                if(_loc21_ || param2)
                                                                                                {
                                                                                                   addr323:
                                                                                                   §§push(§§pop() + §§pop() * _loc8_.col2.y);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      addr326:
                                                                                                      §§push(Number(§§pop()));
                                                                                                   }
                                                                                                   var _loc13_:* = §§pop();
                                                                                                   §§push(_loc12_);
                                                                                                   if(!(_loc20_ && param1))
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc10_);
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                   }
                                                                                                   var _loc14_:* = §§pop();
                                                                                                   §§push(_loc13_);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(§§pop() - _loc11_);
                                                                                                      if(_loc21_ || param1)
                                                                                                      {
                                                                                                         addr354:
                                                                                                         §§push(Number(§§pop()));
                                                                                                      }
                                                                                                      var _loc15_:* = §§pop();
                                                                                                      var _loc16_:* = -1;
                                                                                                      var _loc17_:int = 0;
                                                                                                      loop0:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc17_);
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(this.§"![§);
                                                                                                            if(_loc21_ || param1)
                                                                                                            {
                                                                                                               if(§§pop() >= §§pop())
                                                                                                               {
                                                                                                                  §§goto(addr808);
                                                                                                               }
                                                                                                               §§push((_loc9_ = this.§^v§[_loc17_]).x);
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc10_);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     §§push(§§pop() - §§pop());
                                                                                                                     if(!(_loc20_ && param1))
                                                                                                                     {
                                                                                                                        §§push(Number(§§pop()));
                                                                                                                        if(!_loc20_)
                                                                                                                        {
                                                                                                                           addr386:
                                                                                                                           _loc6_ = §§pop();
                                                                                                                           if(_loc21_)
                                                                                                                           {
                                                                                                                              §§push(_loc9_.y);
                                                                                                                              if(_loc21_ || param2)
                                                                                                                              {
                                                                                                                                 addr399:
                                                                                                                                 §§push(§§pop() - _loc11_);
                                                                                                                                 if(_loc21_)
                                                                                                                                 {
                                                                                                                                    addr402:
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                 }
                                                                                                                                 _loc7_ = §§pop();
                                                                                                                              }
                                                                                                                              §§goto(addr402);
                                                                                                                           }
                                                                                                                           §§push((_loc9_ = this.§6"0§[_loc17_]).x);
                                                                                                                           if(!(_loc20_ && this))
                                                                                                                           {
                                                                                                                              §§push(_loc6_);
                                                                                                                              if(!(_loc20_ && param1))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(_loc9_.y);
                                                                                                                                    if(!_loc20_)
                                                                                                                                    {
                                                                                                                                       §§push(_loc7_);
                                                                                                                                       if(!_loc20_)
                                                                                                                                       {
                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                if(!(_loc20_ && this))
                                                                                                                                                {
                                                                                                                                                   _loc18_ = §§pop();
                                                                                                                                                   if(_loc21_)
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
                                                                                                                                                            loop3:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc9_.y);
                                                                                                                                                               loop4:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc15_);
                                                                                                                                                                  loop5:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                                                                     loop6:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        loop7:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(Number(§§pop()));
                                                                                                                                                                           if(!(_loc20_ && param1))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop());
                                                                                                                                                                              loop48:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 _loc19_ = §§pop();
                                                                                                                                                                                 loop49:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    loop29:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(§§pop() != §§pop())
                                                                                                                                                                                       {
                                                                                                                                                                                          addr727:
                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                          loop22:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!(_loc21_ || param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop49;
                                                                                                                                                                                             }
                                                                                                                                                                                             if(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop1;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(0);
                                                                                                                                                                                             while(_loc20_)
                                                                                                                                                                                             {
                                                                                                                                                                                                continue loop2;
                                                                                                                                                                                             }
                                                                                                                                                                                             addr741:
                                                                                                                                                                                             §§push(§§pop() < §§pop());
                                                                                                                                                                                             while(true)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(§§pop());
                                                                                                                                                                                                loop17:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      loop34:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§pop();
                                                                                                                                                                                                         loop18:
                                                                                                                                                                                                         while(_loc21_ || param3)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc18_);
                                                                                                                                                                                                            loop20:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               if(_loc21_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!_loc21_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop7;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§push(_loc4_);
                                                                                                                                                                                                                  loop30:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     if(_loc21_ || this)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                        loop45:
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                                                                           loop26:
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(§§pop() < §§pop());
                                                                                                                                                                                                                              loop15:
                                                                                                                                                                                                                              while(_loc21_ || this)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 loop16:
                                                                                                                                                                                                                                 while(§§pop())
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    loop24:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                       loop21:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          if(!(_loc21_ || this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop22;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr718:
                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                          loop10:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc21_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop4;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                loop40:
                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   §§push(Number(§§pop()));
                                                                                                                                                                                                                                                   loop23:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      _loc4_ = §§pop();
                                                                                                                                                                                                                                                      loop33:
                                                                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(_loc17_);
                                                                                                                                                                                                                                                         if(_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            §§push(int(§§pop()));
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         _loc16_ = §§pop();
                                                                                                                                                                                                                                                         loop25:
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc21_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(!(_loc21_ || this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  break loop23;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               loop9:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc5_);
                                                                                                                                                                                                                                                                  if(!(_loc20_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_ || param1)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop40;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop3;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§push(_loc4_);
                                                                                                                                                                                                                                                                        if(_loc21_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc21_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 continue loop10;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              if(_loc21_ || param1)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(_loc20_ && param3)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop48;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    continue loop6;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr533:
                                                                                                                                                                                                                                                                                 §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                                                                 if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(_loc21_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       if(§§pop() >= §§pop())
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          do
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             _loc17_++;
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          while(_loc20_);
                                                                                                                                                                                                                                                                                          
                                                                                                                                                                                                                                                                                          if(!_loc20_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      break;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   continue;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   continue loop9;
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr725:
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          else
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr543:
                                                                                                                                                                                                                                                                                             if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                continue loop33;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§push(false);
                                                                                                                                                                                                                                                                                             if(_loc21_ || this)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(!_loc20_)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      if(_loc21_ || this)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         return §§pop();
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop34;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                   loop35:
                                                                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                                                                      §§push(§§pop());
                                                                                                                                                                                                                                                                                                      if(_loc21_ || param2)
                                                                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                                                                         if(§§pop())
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop15;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  continue loop17;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§pop();
                                                                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                  addr578:
                                                                                                                                                                                                                                                                                                                  loop50:
                                                                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§push(_loc5_);
                                                                                                                                                                                                                                                                                                                     addr579:
                                                                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        §§push(_loc19_);
                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop45;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        if(!_loc21_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           continue loop5;
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(!(_loc21_ || param1))
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop26;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() < §§pop());
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           if(_loc20_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop30;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                                                           if(_loc21_)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop23;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop21;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 if(_loc20_)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    continue loop20;
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                                 §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                                                                    _loc5_ = §§pop();
                                                                                                                                                                                                                                                                                                                                    addr639:
                                                                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                                                                       if(_loc20_)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop25;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                                                                          continue loop9;
                                                                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              addr621:
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           §§goto(addr638);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        continue loop50;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                            addr657:
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         loop12:
                                                                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                                                                            addr596:
                                                                                                                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                                                                               if(!§§pop())
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  break loop12;
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               if(!_loc20_)
                                                                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     if(_loc20_)
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        continue loop24;
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§push(_loc18_);
                                                                                                                                                                                                                                                                                                                     if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                                                                        if(_loc20_)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                                                                              addr647:
                                                                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                                                                 continue loop35;
                                                                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                                                                              break loop16;
                                                                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                                                                           continue loop12;
                                                                                                                                                                                                                                                                                                                           addr646:
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                                                                           §§goto(addr614);
                                                                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                                                                     §§goto(addr621);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                                                                     §§goto(addr662);
                                                                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                                                                               §§goto(addr639);
                                                                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                                                                         continue loop9;
                                                                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                                                                      continue loop17;
                                                                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                §§goto(addr657);
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr596);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr639);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr543);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr647);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr614);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              else
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 addr776:
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       break loop23;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr776:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr725);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr579);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr533);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr578);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr638);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               continue loop0;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop18;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   break loop15;
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr646);
                                                                                                                                                                                                                                 return _loc19_;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              return §§pop();
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr699:
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     else
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§goto(addr739);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                               }
                                                                                                                                                                                                               else
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  addr775:
                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§goto(addr776);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr775:
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr776);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                         addr774:
                                                                                                                                                                                                         §§goto(addr775);
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr708);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr741);
                                                                                                                                                                                             }
                                                                                                                                                                                             addr739:
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr774);
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              addr771:
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr775);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr641);
                                                                                                                                                }
                                                                                                                                                §§goto(addr775);
                                                                                                                                             }
                                                                                                                                             §§goto(addr578);
                                                                                                                                          }
                                                                                                                                          §§goto(addr776);
                                                                                                                                       }
                                                                                                                                       §§goto(addr699);
                                                                                                                                    }
                                                                                                                                    §§goto(addr721);
                                                                                                                                 }
                                                                                                                                 §§goto(addr613);
                                                                                                                              }
                                                                                                                              §§goto(addr771);
                                                                                                                           }
                                                                                                                           §§goto(addr578);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     §§goto(addr402);
                                                                                                                  }
                                                                                                                  §§goto(addr399);
                                                                                                               }
                                                                                                               §§goto(addr386);
                                                                                                            }
                                                                                                            §§goto(addr802);
                                                                                                         }
                                                                                                         break;
                                                                                                      }
                                                                                                      addr802:
                                                                                                      if(§§pop() < §§pop())
                                                                                                      {
                                                                                                         return false;
                                                                                                      }
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         param1.fraction = _loc4_;
                                                                                                      }
                                                                                                      addr808:
                                                                                                      if(!(_loc20_ && param3))
                                                                                                      {
                                                                                                         §§push(_loc16_);
                                                                                                         break loop0;
                                                                                                      }
                                                                                                      _loc8_ = param3.R;
                                                                                                      _loc9_ = this.§6"0§[_loc16_];
                                                                                                      if(!_loc20_)
                                                                                                      {
                                                                                                         §§push(param1.normal);
                                                                                                         loop51:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_.col1);
                                                                                                            addr913:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                               addr914:
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  §§push(_loc9_.x);
                                                                                                                  if(!(_loc20_ && param2))
                                                                                                                  {
                                                                                                                     §§push(§§pop() * §§pop());
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc8_.col2);
                                                                                                                        addr936:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop().x);
                                                                                                                        }
                                                                                                                     }
                                                                                                                     addr924:
                                                                                                                  }
                                                                                                                  addr937:
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     §§push(_loc9_.y);
                                                                                                                     addr939:
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                        addr940:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                           addr941:
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
                                                                                                      return true;
                                                                                                      §§push(0);
                                                                                                   }
                                                                                                   §§goto(addr354);
                                                                                                }
                                                                                                §§goto(addr323);
                                                                                             }
                                                                                             §§goto(addr326);
                                                                                          }
                                                                                          §§goto(addr323);
                                                                                       }
                                                                                       §§goto(addr311);
                                                                                    }
                                                                                    §§push(§§pop() + §§pop());
                                                                                    if(!_loc21_)
                                                                                    {
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr293);
                                                                              }
                                                                              §§goto(addr257);
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                     }
                                                                     §§goto(addr250);
                                                                  }
                                                                  §§goto(addr253);
                                                               }
                                                               §§goto(addr252);
                                                            }
                                                            §§goto(addr250);
                                                         }
                                                         §§goto(addr247);
                                                      }
                                                      §§goto(addr250);
                                                   }
                                                }
                                                §§goto(addr195);
                                                §§push(Number(§§pop()));
                                             }
                                          }
                                          §§goto(addr195);
                                       }
                                       §§goto(addr152);
                                    }
                                    §§goto(addr155);
                                 }
                                 §§goto(addr152);
                              }
                              §§goto(addr140);
                           }
                           §§goto(addr113);
                        }
                        _loc7_ = §§pop();
                        §§goto(addr115);
                     }
                  }
                  §§goto(addr105);
               }
               §§goto(addr113);
            }
            §§goto(addr94);
         }
         §§goto(addr115);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§^v§[0];
         §§push(param2.position.x);
         if(_loc12_ || this)
         {
            §§push(_loc3_.col1.x);
            if(!(_loc13_ && this))
            {
               §§push(_loc4_.x);
               if(!_loc13_)
               {
                  §§push(§§pop() * §§pop());
                  if(_loc12_ || this)
                  {
                     addr62:
                     §§push(_loc3_.col2.x);
                     if(!(_loc13_ && this))
                     {
                        addr75:
                        §§push(§§pop() + §§pop() * _loc4_.y);
                     }
                     §§goto(addr75);
                  }
                  §§push(§§pop() + §§pop());
                  if(_loc12_)
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc13_ && param2))
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc12_)
                     {
                        §§push(_loc4_.x);
                        if(!(_loc13_ && _loc3_))
                        {
                           §§push(§§pop() * §§pop());
                           if(_loc12_)
                           {
                              addr117:
                              §§push(_loc3_.col2.y);
                              if(_loc12_)
                              {
                                 addr113:
                                 §§push(§§pop() * _loc4_.y);
                              }
                              §§push(§§pop() + (§§pop() + §§pop()));
                              if(!(_loc13_ && _loc3_))
                              {
                                 addr126:
                                 var _loc6_:Number = §§pop();
                                 §§push(_loc5_);
                                 if(_loc12_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc7_:* = §§pop();
                                 §§push(_loc6_);
                                 if(_loc12_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc8_:* = §§pop();
                                 var _loc9_:int = 1;
                                 while(_loc9_ < this.§"![§)
                                 {
                                    _loc4_ = this.§^v§[_loc9_];
                                    if(!(_loc13_ && this))
                                    {
                                       §§push(param2.position);
                                       loop1:
                                       while(true)
                                       {
                                          §§push(§§pop().x);
                                          addr506:
                                          while(true)
                                          {
                                             §§push(_loc3_.col1);
                                             addr508:
                                             while(true)
                                             {
                                                §§push(§§pop().x);
                                                if(!(_loc13_ && param1))
                                                {
                                                   §§push(_loc4_.x);
                                                   if(_loc12_ || this)
                                                   {
                                                      addr526:
                                                      §§push(§§pop() * §§pop());
                                                      while(true)
                                                      {
                                                         §§push(_loc3_.col2);
                                                         addr528:
                                                         while(true)
                                                         {
                                                            §§push(§§pop().x);
                                                            addr529:
                                                            while(true)
                                                            {
                                                               §§push(_loc4_.y);
                                                               addr531:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() * §§pop());
                                                               }
                                                            }
                                                         }
                                                      }
                                                      addr526:
                                                   }
                                                   while(true)
                                                   {
                                                      §§push(§§pop() + §§pop());
                                                      addr533:
                                                      while(true)
                                                      {
                                                         §§push(§§pop() + §§pop());
                                                         addr534:
                                                         while(true)
                                                         {
                                                            §§push(Number(§§pop()));
                                                            addr535:
                                                            while(true)
                                                            {
                                                               _loc10_ = §§pop();
                                                               continue loop1;
                                                            }
                                                         }
                                                      }
                                                   }
                                                   addr532:
                                                }
                                                §§goto(addr526);
                                             }
                                          }
                                       }
                                    }
                                    §§goto(addr290);
                                 }
                                 if(!_loc13_)
                                 {
                                    §§push(param1.§&1§);
                                    if(_loc12_)
                                    {
                                       §§push(_loc5_);
                                       if(!_loc13_)
                                       {
                                          §§push(§§pop() - b2internal::>!M);
                                          if(_loc12_)
                                          {
                                             addr554:
                                             §§pop().x = §§pop();
                                             if(_loc12_ || param1)
                                             {
                                                addr608:
                                                §§push(param1.§&1§);
                                                §§push(_loc6_);
                                                if(_loc12_)
                                                {
                                                   addr613:
                                                   §§pop().y = §§pop() - b2internal::>!M;
                                                   while(true)
                                                   {
                                                      §§push(param1.§3!E§);
                                                      addr591:
                                                      loop59:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         addr592:
                                                         while(true)
                                                         {
                                                            §§pop().x = §§pop() + b2internal::>!M;
                                                            continue loop59;
                                                         }
                                                      }
                                                   }
                                                   addr614:
                                                }
                                                §§goto(addr613);
                                             }
                                             while(true)
                                             {
                                                §§push(param1.§3!E§);
                                                if(!_loc13_)
                                                {
                                                   §§push(_loc8_);
                                                   if(_loc12_)
                                                   {
                                                      §§pop().y = §§pop() + b2internal::>!M;
                                                      if(!(_loc12_ || this))
                                                      {
                                                         continue;
                                                      }
                                                      if(_loc12_)
                                                      {
                                                         return;
                                                         addr587:
                                                      }
                                                      §§goto(addr614);
                                                   }
                                                   §§goto(addr592);
                                                }
                                                break;
                                             }
                                             §§goto(addr591);
                                          }
                                          §§goto(addr613);
                                       }
                                       §§goto(addr554);
                                    }
                                    §§goto(addr608);
                                 }
                                 §§goto(addr587);
                              }
                              §§goto(addr126);
                           }
                           §§goto(addr117);
                        }
                        §§goto(addr113);
                     }
                     §§goto(addr117);
                  }
                  §§goto(addr126);
               }
               §§goto(addr75);
            }
            §§goto(addr62);
         }
         §§goto(addr79);
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
         var _loc17_:Number = NaN;
         var _loc18_:Number = NaN;
         var _loc19_:* = NaN;
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:Number = NaN;
         var _loc24_:Number = NaN;
         var _loc25_:Number = NaN;
         var _loc26_:Number = NaN;
         if(!_loc27_)
         {
            if(this.§"![§ == 2)
            {
               loop139:
               while(true)
               {
                  §§push(param1.center);
                  loop140:
                  while(true)
                  {
                     §§push(0.5);
                     do
                     {
                        §§push(§§pop() * (this.§^v§[0].x + this.§^v§[1].x));
                        while(true)
                        {
                           §§pop().x = §§pop();
                           §§push(param1.center);
                           if(!(_loc27_ && param2))
                           {
                              §§push(0.5);
                              if(_loc27_)
                              {
                                 break;
                              }
                              if(_loc28_)
                              {
                                 §§push(§§pop() * (this.§^v§[0].y + this.§^v§[1].y));
                                 break;
                              }
                              continue;
                           }
                           continue loop140;
                        }
                     }
                     while(_loc27_ && param1);
                     
                     §§pop().y = §§pop();
                     continue loop139;
                  }
               }
               addr138:
            }
            else
            {
               §§push(0);
               if(!_loc27_)
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
               if(!(_loc27_ && this))
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && param1))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(!(_loc27_ && this))
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
               while(_loc10_ < this.§"![§)
               {
                  _loc11_ = this.§^v§[_loc10_];
                  if(_loc28_)
                  {
                     _loc12_ = _loc10_ + 1 < this.§"![§ ? this.§^v§[int(_loc10_ + 1)] : this.§^v§[0];
                     if(!(_loc27_ && param1))
                     {
                        §§push(_loc11_.x);
                        while(true)
                        {
                           §§push(_loc7_);
                           while(true)
                           {
                              §§push(§§pop() - §§pop());
                              while(true)
                              {
                                 §§push(Number(§§pop()));
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
                                    while(true)
                                    {
                                       §§push(_loc11_.y);
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          while(true)
                                          {
                                             §§push(§§pop() - §§pop());
                                             while(true)
                                             {
                                                §§push(Number(§§pop()));
                                                while(true)
                                                {
                                                   _loc14_ = §§pop();
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               while(true)
                                                               {
                                                                  _loc15_ = §§pop();
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.y);
                                                                     loop16:
                                                                     while(true)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        addr1098:
                                                                        while(true)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           addr1099:
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              addr1100:
                                                                              while(true)
                                                                              {
                                                                                 _loc16_ = §§pop();
                                                                                 addr1101:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc13_);
                                                                                    continue loop16;
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                            }
                                                         }
                                                         if(_loc27_ && this)
                                                         {
                                                            continue;
                                                         }
                                                         _loc19_ = §§pop();
                                                         §§goto(addr970);
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
                     §§goto(addr269);
                  }
                  §§goto(addr231);
               }
               if(_loc28_ || param2)
               {
                  §§push(param1);
                  §§push(param2);
                  if(_loc28_ || param2)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§#!3§ = §§pop();
                  if(_loc28_ || param2)
                  {
                     §§push(_loc3_);
                     loop134:
                     while(true)
                     {
                        §§push(1);
                        loop135:
                        while(true)
                        {
                           §§push(_loc5_);
                           loop136:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              loop137:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 if(_loc28_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 loop138:
                                 while(true)
                                 {
                                    _loc3_ = §§pop();
                                    addr1259:
                                    while(true)
                                    {
                                       §§push(_loc4_);
                                       if(_loc28_)
                                       {
                                          if(!_loc28_)
                                          {
                                             continue loop138;
                                          }
                                          §§push(1);
                                          if(!_loc28_)
                                          {
                                             continue loop135;
                                          }
                                          §§push(_loc5_);
                                          if(!(_loc28_ || param2))
                                          {
                                             continue loop136;
                                          }
                                          §§push(§§pop() / §§pop());
                                          if(_loc27_ && _loc3_)
                                          {
                                             continue loop137;
                                          }
                                          §§push(§§pop() * §§pop());
                                          if(_loc28_ || param1)
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                       }
                                       if(!(_loc27_ && _loc3_))
                                       {
                                          break;
                                       }
                                       continue loop134;
                                    }
                                    _loc4_ = §§pop();
                                    while(true)
                                    {
                                       param1.center.Set(_loc3_,_loc4_);
                                       addr1184:
                                       §§goto(addr1191);
                                    }
                                 }
                              }
                           }
                        }
                     }
                     addr1155:
                  }
                  addr1191:
                  while(_loc27_ && this)
                  {
                     continue loop132;
                  }
                  while(true)
                  {
                     §§push(param1);
                     §§push(param2);
                     if(!(_loc27_ && this))
                     {
                        §§push(§§pop() * _loc6_);
                     }
                     §§pop().I = §§pop();
                     if(_loc27_)
                     {
                        continue;
                     }
                     if(_loc28_)
                     {
                        break;
                     }
                     §§goto(addr1259);
                  }
                  return;
               }
               §§goto(addr1155);
            }
         }
         while(true)
         {
            param1.§#!3§ = 0;
            do
            {
               param1.I = 0;
            }
            while(_loc27_ && this);
            
            if(_loc28_ || param2)
            {
               break;
            }
            §§goto(addr138);
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
         var _loc5_:b2Vec2 = b2Math.§`!C§(param3.R,param1);
         §§push(param2);
         if(_loc27_)
         {
            §§push(§§pop() - b2Math.§,w§(param1,param3.position));
            if(!(_loc28_ && this))
            {
               §§push(Number(§§pop()));
            }
         }
         var _loc6_:* = §§pop();
         var _loc7_:Vector.<Number> = new Vector.<Number>();
         var _loc8_:int = 0;
         var _loc9_:* = -1;
         var _loc10_:* = -1;
         var _loc11_:Boolean = false;
         if(!(_loc28_ && param3))
         {
            _loc12_ = 0;
         }
         loop0:
         while(true)
         {
            §§push(_loc12_);
            if(_loc27_)
            {
               §§push(this.§"![§);
               if(!(_loc28_ && this))
               {
                  if(§§pop() >= §§pop())
                  {
                     if(_loc27_)
                     {
                        addr274:
                        §§push(_loc8_);
                        if(!(_loc28_ && param1))
                        {
                           addr405:
                           var _loc26_:* = §§pop();
                           if(!_loc28_)
                           {
                              §§push(0);
                              if(_loc27_ || param2)
                              {
                                 §§push(_loc26_);
                                 if(_loc27_ || param1)
                                 {
                                    if(§§pop() === §§pop())
                                    {
                                       if(!(_loc28_ && param3))
                                       {
                                          addr454:
                                          §§push(0);
                                          if(!_loc28_)
                                          {
                                             addr459:
                                             if(_loc27_)
                                             {
                                                do
                                                {
                                                   switch(§§pop())
                                                   {
                                                      case 0:
                                                         addr277:
                                                         if(_loc11_)
                                                         {
                                                            if(_loc27_ || param2)
                                                            {
                                                               addr285:
                                                               _loc24_ = new b2MassData();
                                                               if(!_loc28_)
                                                               {
                                                                  this.ComputeMass(_loc24_,1);
                                                                  do
                                                                  {
                                                                     param4.SetV(b2Math.§#@§(param3,_loc24_.center));
                                                                  }
                                                                  while(_loc28_);
                                                                  
                                                               }
                                                               return _loc24_.§#!3§;
                                                            }
                                                            addr394:
                                                            addr463:
                                                            §§push(_loc9_);
                                                            if(_loc27_ || this)
                                                            {
                                                            }
                                                            break;
                                                         }
                                                         continue;
                                                      case 1:
                                                         addr327:
                                                         §§push(_loc9_);
                                                         if(!(_loc28_ && param3))
                                                         {
                                                            break loop0;
                                                         }
                                                         break;
                                                      default:
                                                         §§goto(addr463);
                                                   }
                                                   addr484:
                                                   var _loc13_:* = §§pop();
                                                   §§push(_loc10_);
                                                   if(_loc27_)
                                                   {
                                                      §§push(§§pop() + 1);
                                                      if(!(_loc28_ && param1))
                                                      {
                                                         §§push(§§pop() % this.§"![§);
                                                      }
                                                      §§push(int(§§pop()));
                                                   }
                                                   var _loc14_:* = §§pop();
                                                   §§push(0 - _loc7_[_loc9_]);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                                      if(!(_loc28_ && param3))
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc15_:* = §§pop();
                                                   §§push(0 - _loc7_[_loc10_]);
                                                   if(!_loc28_)
                                                   {
                                                      §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                                      if(_loc27_ || param3)
                                                      {
                                                         addr558:
                                                         §§push(Number(§§pop()));
                                                      }
                                                      var _loc16_:* = §§pop();
                                                      §§push(§§findproperty(b2Vec2));
                                                      §§push(this.§^v§[_loc9_].x * (1 - _loc15_));
                                                      if(_loc27_ || this)
                                                      {
                                                         §§push(this.§^v§[_loc13_].x * _loc15_);
                                                         if(_loc27_ || param3)
                                                         {
                                                            addr592:
                                                            §§push(§§pop() + §§pop());
                                                            §§push(this.§^v§[_loc9_].y * (1 - _loc15_));
                                                            if(!(_loc28_ && this))
                                                            {
                                                               §§push(§§pop() + this.§^v§[_loc13_].y * _loc15_);
                                                            }
                                                         }
                                                         var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                         §§push(§§findproperty(b2Vec2));
                                                         §§push(this.§^v§[_loc10_].x * (1 - _loc16_));
                                                         if(!(_loc28_ && param1))
                                                         {
                                                            §§push(this.§^v§[_loc14_].x * _loc16_);
                                                            if(_loc27_ || param2)
                                                            {
                                                               addr651:
                                                               §§push(§§pop() + §§pop());
                                                               §§push(this.§^v§[_loc10_].y * (1 - _loc16_));
                                                               if(_loc27_ || this)
                                                               {
                                                                  addr667:
                                                                  §§push(§§pop() + this.§^v§[_loc14_].y * _loc16_);
                                                               }
                                                               var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                                               var _loc19_:* = Number(0);
                                                               var _loc20_:b2Vec2 = new b2Vec2();
                                                               var _loc21_:b2Vec2 = this.§^v§[_loc13_];
                                                               if(!_loc28_)
                                                               {
                                                                  §§push(_loc13_);
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(!_loc28_)
                                                                     {
                                                                        _loc12_ = §§pop();
                                                                        if(_loc27_ || param2)
                                                                        {
                                                                           addr707:
                                                                           loop21:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc12_);
                                                                              addr981:
                                                                              loop10:
                                                                              while(true)
                                                                              {
                                                                                 §§push(_loc14_);
                                                                                 loop11:
                                                                                 while(true)
                                                                                 {
                                                                                    if(§§pop() == §§pop())
                                                                                    {
                                                                                       if(_loc27_)
                                                                                       {
                                                                                          break;
                                                                                       }
                                                                                       addr1013:
                                                                                       §§push(_loc19_);
                                                                                    }
                                                                                    else
                                                                                    {
                                                                                       §§push(_loc12_);
                                                                                       if(!_loc28_)
                                                                                       {
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(1);
                                                                                             if(!_loc28_)
                                                                                             {
                                                                                                §§push(§§pop() + §§pop());
                                                                                                if(_loc27_)
                                                                                                {
                                                                                                   §§push(§§pop() % this.§"![§);
                                                                                                   if(_loc28_)
                                                                                                   {
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                §§push(int(§§pop()));
                                                                                                if(_loc27_ || param2)
                                                                                                {
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(§§pop());
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc12_ = §§pop();
                                                                                                            if(!(_loc27_ || this))
                                                                                                            {
                                                                                                               continue loop10;
                                                                                                            }
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(_loc14_);
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  continue loop11;
                                                                                                               }
                                                                                                            }
                                                                                                         }
                                                                                                         addr734:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         if(§§pop() == §§pop())
                                                                                                         {
                                                                                                            if(_loc28_ && this)
                                                                                                            {
                                                                                                               break loop11;
                                                                                                            }
                                                                                                            _loc22_ = _loc18_;
                                                                                                            if(!_loc28_)
                                                                                                            {
                                                                                                               addr765:
                                                                                                               §§push(0.5);
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  §§push(_loc21_.x);
                                                                                                                  if(!(_loc28_ && param1))
                                                                                                                  {
                                                                                                                     §§push(_loc17_.x);
                                                                                                                     if(_loc27_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc27_)
                                                                                                                        {
                                                                                                                           §§push(_loc22_.y);
                                                                                                                           if(_loc27_ || param3)
                                                                                                                           {
                                                                                                                              addr793:
                                                                                                                              §§push(_loc17_.y);
                                                                                                                              if(!(_loc28_ && param3))
                                                                                                                              {
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                                 if(!(_loc28_ && param1))
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(!_loc28_)
                                                                                                                                    {
                                                                                                                                       addr813:
                                                                                                                                       §§push(_loc21_.y);
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          addr817:
                                                                                                                                          §§push(_loc17_.y);
                                                                                                                                          if(_loc27_)
                                                                                                                                          {
                                                                                                                                             §§push(§§pop() - §§pop());
                                                                                                                                             if(_loc27_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc22_.x);
                                                                                                                                                if(_loc27_ || param2)
                                                                                                                                                {
                                                                                                                                                   addr836:
                                                                                                                                                   §§push(§§pop() - §§pop() * (§§pop() - _loc17_.x));
                                                                                                                                                   if(!(_loc28_ && param2))
                                                                                                                                                   {
                                                                                                                                                      addr845:
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      if(!_loc28_)
                                                                                                                                                      {
                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                         if(!(_loc28_ && param3))
                                                                                                                                                         {
                                                                                                                                                            _loc25_ = §§pop();
                                                                                                                                                            if(!(_loc28_ && param1))
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc19_);
                                                                                                                                                               if(!(_loc28_ && param1))
                                                                                                                                                               {
                                                                                                                                                                  addr970:
                                                                                                                                                                  §§push(§§pop() + _loc25_);
                                                                                                                                                                  if(_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     addr974:
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               _loc19_ = §§pop();
                                                                                                                                                            }
                                                                                                                                                            loop15:
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               loop13:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                  §§push(_loc20_.x);
                                                                                                                                                                  if(_loc27_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc25_);
                                                                                                                                                                     if(!(_loc28_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc17_.x);
                                                                                                                                                                        if(!_loc28_)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(_loc21_.x);
                                                                                                                                                                           if(!(_loc28_ && param3))
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr951:
                                                                                                                                                                                 §§push(§§pop() + _loc22_.x);
                                                                                                                                                                              }
                                                                                                                                                                              §§push(§§pop() * §§pop());
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 addr958:
                                                                                                                                                                                 §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                                                 addr957:
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    if(!_loc27_)
                                                                                                                                                                                    {
                                                                                                                                                                                       continue loop15;
                                                                                                                                                                                    }
                                                                                                                                                                                    §§push(_loc20_);
                                                                                                                                                                                    §§push(_loc20_.y);
                                                                                                                                                                                    if(!_loc28_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(_loc25_);
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc17_.y);
                                                                                                                                                                                          if(!_loc28_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc21_.y);
                                                                                                                                                                                             if(_loc27_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                addr898:
                                                                                                                                                                                                §§push(§§pop() + §§pop());
                                                                                                                                                                                                if(_loc27_ || this)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc22_.y);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§push(§§pop() * §§pop());
                                                                                                                                                                                                if(!(_loc28_ && param3))
                                                                                                                                                                                                {
                                                                                                                                                                                                   addr906:
                                                                                                                                                                                                   §§push(§§pop() / 3);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§pop().y = §§pop() + §§pop();
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   while(false)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      continue loop13;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   _loc21_ = _loc22_;
                                                                                                                                                                                                   continue loop21;
                                                                                                                                                                                                   addr912:
                                                                                                                                                                                                }
                                                                                                                                                                                                continue;
                                                                                                                                                                                             }
                                                                                                                                                                                             §§push(§§pop() + §§pop());
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr898);
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr906);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr898);
                                                                                                                                                                                 }
                                                                                                                                                                                 continue loop15;
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr957);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr951);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr957);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr958);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr974);
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr970);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                       }
                                                                                                                                       §§goto(addr836);
                                                                                                                                    }
                                                                                                                                    §§goto(addr970);
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              §§goto(addr836);
                                                                                                                           }
                                                                                                                           §§goto(addr817);
                                                                                                                        }
                                                                                                                        §§goto(addr845);
                                                                                                                     }
                                                                                                                     §§goto(addr793);
                                                                                                                  }
                                                                                                                  §§goto(addr813);
                                                                                                               }
                                                                                                               §§goto(addr974);
                                                                                                            }
                                                                                                            §§goto(addr912);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            _loc22_ = this.§^v§[_loc12_];
                                                                                                         }
                                                                                                         §§goto(addr765);
                                                                                                      }
                                                                                                   }
                                                                                                   addr731:
                                                                                                }
                                                                                                §§goto(addr742);
                                                                                             }
                                                                                             §§goto(addr734);
                                                                                          }
                                                                                          addr1014:
                                                                                          return §§pop();
                                                                                          addr712:
                                                                                       }
                                                                                       §§goto(addr731);
                                                                                    }
                                                                                    §§goto(addr1014);
                                                                                 }
                                                                                 _loc20_.§",§(1 / _loc19_);
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    param4.SetV(b2Math.§#@§(param3,_loc20_));
                                                                                 }
                                                                              }
                                                                           }
                                                                        }
                                                                        §§goto(addr1013);
                                                                     }
                                                                     §§goto(addr981);
                                                                  }
                                                                  §§goto(addr712);
                                                               }
                                                               §§goto(addr707);
                                                            }
                                                            §§goto(addr667);
                                                         }
                                                         §§goto(addr651);
                                                      }
                                                      §§goto(addr592);
                                                   }
                                                   §§goto(addr558);
                                                }
                                                while(§§push(0), _loc28_);
                                                
                                                return §§pop();
                                                addr462:
                                             }
                                             §§push(§§pop() + 1);
                                             if(!(_loc28_ && param1))
                                             {
                                                addr480:
                                                §§push(§§pop() % this.§"![§);
                                             }
                                             §§goto(addr484);
                                             §§push(int(§§pop()));
                                          }
                                          §§goto(addr459);
                                       }
                                       addr446:
                                       §§push(1);
                                       if(_loc27_ || param3)
                                       {
                                          §§goto(addr454);
                                       }
                                       §§goto(addr459);
                                    }
                                    §§push(1);
                                    if(_loc27_ || param3)
                                    {
                                       §§push(_loc26_);
                                    }
                                    §§goto(addr459);
                                 }
                                 if(§§pop() === §§pop())
                                 {
                                    §§goto(addr446);
                                 }
                                 §§push(2);
                              }
                              §§goto(addr459);
                           }
                           §§goto(addr446);
                        }
                        §§goto(addr484);
                        addr274:
                     }
                     §§goto(addr327);
                  }
                  else
                  {
                     _loc7_[_loc12_] = b2Math.§,w§(_loc5_,this.§^v§[_loc12_]) - _loc6_;
                     loop1:
                     while(true)
                     {
                        §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                        if(_loc27_)
                        {
                           _loc23_ = §§pop();
                           if(_loc27_)
                           {
                              §§push(_loc12_);
                              if(_loc27_ || param1)
                              {
                                 §§push(0);
                                 if(!(_loc28_ && param2))
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(!_loc28_)
                                       {
                                          §§push(_loc23_);
                                          loop2:
                                          while(true)
                                          {
                                             if(!§§pop())
                                             {
                                                §§push(_loc11_);
                                                if(!(_loc28_ && this))
                                                {
                                                   if(§§pop())
                                                   {
                                                      if(_loc27_ || param1)
                                                      {
                                                         §§push(_loc12_);
                                                         if(_loc27_)
                                                         {
                                                            §§push(§§pop() - 1);
                                                            if(_loc27_ || this)
                                                            {
                                                               §§push(int(§§pop()));
                                                               if(!(_loc28_ && param3))
                                                               {
                                                                  addr154:
                                                                  if(!_loc28_)
                                                                  {
                                                                     _loc10_ = §§pop();
                                                                     while(true)
                                                                     {
                                                                        _loc8_++;
                                                                        if(_loc27_ || param3)
                                                                        {
                                                                           if(!_loc27_)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§goto(addr81);
                                                                        }
                                                                        else
                                                                        {
                                                                           §§goto(addr274);
                                                                        }
                                                                     }
                                                                     addr157:
                                                                  }
                                                                  else
                                                                  {
                                                                     §§goto(addr204);
                                                                  }
                                                               }
                                                               §§goto(addr462);
                                                            }
                                                            §§goto(addr480);
                                                         }
                                                         §§goto(addr154);
                                                      }
                                                      §§goto(addr157);
                                                   }
                                                   §§goto(addr81);
                                                }
                                                break;
                                             }
                                             if(_loc27_)
                                             {
                                                while(true)
                                                {
                                                   §§push(_loc11_);
                                                   if(!_loc28_)
                                                   {
                                                      if(!§§pop())
                                                      {
                                                         if(!(_loc28_ && this))
                                                         {
                                                            §§push(_loc12_);
                                                            while(true)
                                                            {
                                                               §§push(§§pop() - 1);
                                                               if(_loc27_)
                                                               {
                                                                  §§push(int(§§pop()));
                                                                  if(!_loc28_)
                                                                  {
                                                                     _loc9_ = §§pop();
                                                                     if(_loc27_ || param3)
                                                                     {
                                                                        continue loop1;
                                                                     }
                                                                     §§goto(addr274);
                                                                  }
                                                                  addr385:
                                                                  §§push(§§pop() - 1);
                                                                  if(!_loc28_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc28_)
                                                                     {
                                                                        §§goto(addr405);
                                                                     }
                                                                     _loc10_ = §§pop();
                                                                     if(!_loc27_)
                                                                     {
                                                                     }
                                                                     §§goto(addr394);
                                                                  }
                                                                  §§goto(addr459);
                                                               }
                                                               addr364:
                                                               §§push(int(§§pop()));
                                                               if(!(_loc27_ || this))
                                                               {
                                                                  §§goto(addr462);
                                                               }
                                                               _loc9_ = §§pop();
                                                               if(_loc27_)
                                                               {
                                                                  addr375:
                                                               }
                                                            }
                                                            addr204:
                                                         }
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            addr81:
                                                            do
                                                            {
                                                               §§push(_loc23_);
                                                               if(_loc28_ && param2)
                                                               {
                                                                  break loop2;
                                                               }
                                                               continue loop2;
                                                            }
                                                            while(false);
                                                            
                                                            continue loop0;
                                                         }
                                                         addr116:
                                                      }
                                                   }
                                                   break loop2;
                                                }
                                                addr192:
                                             }
                                             §§goto(addr394);
                                             §§goto(addr81);
                                          }
                                          §§goto(addr277);
                                       }
                                       §§goto(addr192);
                                    }
                                    §§goto(addr81);
                                 }
                                 §§goto(addr459);
                              }
                              addr361:
                              §§push(§§pop() - 1);
                              if(!_loc28_)
                              {
                                 §§goto(addr364);
                              }
                              §§goto(addr459);
                           }
                           §§goto(addr375);
                        }
                     }
                  }
                  §§goto(addr277);
               }
               addr344:
               if(§§pop() == §§pop())
               {
                  if(_loc27_ || this)
                  {
                     §§push(this.§"![§);
                     if(!(_loc28_ && param3))
                     {
                        §§goto(addr361);
                     }
                     §§goto(addr459);
                  }
                  §§goto(addr394);
               }
               §§push(this.§"![§);
               if(!(_loc28_ && param1))
               {
                  §§goto(addr385);
               }
               §§goto(addr405);
            }
            break;
         }
         while(true)
         {
            §§push(-1);
            if(_loc27_ || param3)
            {
               §§goto(addr344);
            }
            §§goto(addr459);
            §§goto(addr327);
         }
      }
      
      public function §@!D§() : int
      {
         return this.§"![§;
      }
      
      public function §;!r§() : Vector.<b2Vec2>
      {
         return this.§^v§;
      }
      
      public function § !R§() : Vector.<b2Vec2>
      {
         return this.§6"0§;
      }
      
      public function §^s§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§^v§[0].x * param1.x);
         if(!_loc6_)
         {
            §§push(§§pop() + this.§^v§[0].y * param1.y);
            if(_loc7_)
            {
               addr42:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!_loc6_)
               {
                  if(§§pop() >= this.§"![§)
                  {
                     if(_loc6_ && this)
                     {
                        continue;
                     }
                     if(_loc7_ || _loc2_)
                     {
                        addr69:
                        §§push(_loc2_);
                        if(!(_loc6_ && param1))
                        {
                           break;
                        }
                        loop6:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop3:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 if(_loc7_ || param1)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    addr172:
                                    while(true)
                                    {
                                       §§push(_loc3_);
                                       addr173:
                                       while(§§pop() > §§pop())
                                       {
                                          while(true)
                                          {
                                             §§push(_loc4_);
                                             if(!_loc6_)
                                             {
                                                §§push(int(§§pop()));
                                             }
                                             continue loop6;
                                          }
                                          break;
                                       }
                                       _loc4_++;
                                       continue loop0;
                                    }
                                    addr172:
                                 }
                              }
                              _loc3_ = §§pop();
                              addr105:
                              while(true)
                              {
                                 if(!_loc6_)
                                 {
                                    break loop3;
                                 }
                                 continue loop3;
                              }
                           }
                           if(!(_loc7_ || param1))
                           {
                              §§goto(addr174);
                           }
                           §§goto(addr114);
                        }
                     }
                     §§goto(addr105);
                  }
                  else
                  {
                     §§push(this.§^v§[_loc4_].x * param1.x);
                     if(!_loc6_)
                     {
                        §§push(this.§^v§[_loc4_].y * param1.y);
                        if(!(_loc6_ && _loc3_))
                        {
                           §§push(§§pop() + §§pop());
                           if(!_loc6_)
                           {
                              §§push(Number(§§pop()));
                              if(_loc6_ && this)
                              {
                              }
                              §§goto(addr172);
                           }
                           §§push(§§pop());
                           if(!(_loc6_ && this))
                           {
                              _loc5_ = §§pop();
                              §§goto(addr172);
                           }
                        }
                        §§goto(addr173);
                     }
                  }
                  §§goto(addr172);
               }
               §§goto(addr69);
            }
            return §§pop();
         }
         §§goto(addr42);
      }
      
      public function §+M§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§^v§[0].x * param1.x);
         if(_loc6_ || param1)
         {
            §§push(§§pop() + this.§^v§[0].y * param1.y);
            if(!_loc7_)
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
            if(!_loc7_)
            {
               if(§§pop() >= this.§"![§)
               {
                  if(_loc7_)
                  {
                     continue;
                  }
                  if(_loc6_ || this)
                  {
                     if(!_loc7_)
                     {
                        if(!(_loc7_ && _loc2_))
                        {
                           break;
                        }
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc6_)
                           {
                              addr173:
                              §§push(int(§§pop()));
                              while(true)
                              {
                                 _loc2_ = §§pop();
                              }
                              addr173:
                           }
                           §§goto(addr173);
                        }
                        addr169:
                     }
                     while(true)
                     {
                        §§push(_loc5_);
                        if(!_loc7_)
                        {
                           if(!(_loc7_ && this))
                           {
                              if(!(_loc7_ && _loc2_))
                              {
                                 if(_loc6_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                    break;
                                 }
                                 addr152:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              while(true)
                              {
                                 §§push(§§pop());
                                 if(!_loc7_)
                                 {
                                    addr156:
                                    while(true)
                                    {
                                       _loc5_ = §§pop();
                                       addr167:
                                       while(true)
                                       {
                                          §§push(_loc3_);
                                       }
                                       §§goto(addr156);
                                    }
                                    addr166:
                                 }
                                 while(§§pop() > §§pop())
                                 {
                                    §§goto(addr169);
                                 }
                                 addr93:
                                 _loc4_++;
                                 continue loop0;
                              }
                           }
                           §§goto(addr167);
                        }
                        break;
                     }
                     _loc3_ = §§pop();
                  }
                  §§goto(addr93);
               }
               else
               {
                  §§push(this.§^v§[_loc4_].x * param1.x);
                  if(_loc6_)
                  {
                     §§push(this.§^v§[_loc4_].y * param1.y);
                     if(_loc6_ || _loc2_)
                     {
                        §§goto(addr152);
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr166);
                  }
               }
               §§goto(addr152);
            }
            §§goto(addr173);
         }
         return this.§^v§[_loc2_];
      }
      
      private function §@2§() : Boolean
      {
         return false;
      }
      
      private function §"'§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§^v§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!(_loc3_ && _loc2_))
               {
                  if(_loc4_ || _loc2_)
                  {
                     break;
                  }
                  loop1:
                  while(_loc3_ && _loc2_)
                  {
                     while(true)
                     {
                        this.§6"0§[_loc2_] = new b2Vec2();
                        continue loop1;
                     }
                  }
                  _loc2_++;
               }
               continue;
            }
            this.§^v§[_loc2_] = new b2Vec2();
            §§goto(addr90);
         }
      }
   }
}
