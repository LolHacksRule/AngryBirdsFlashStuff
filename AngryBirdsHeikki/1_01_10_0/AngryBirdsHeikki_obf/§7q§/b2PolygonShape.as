package §7q§
{
   import §!4§.*;
   import §3!R§.*;
   import §6A§.*;
   import §^P§.*;
   
   use namespace b2internal;
   
   public class b2PolygonShape extends b2Shape
   {
      
      private static var §0!§:b2Mat22;
      
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_)
         {
            §0!§ = new b2Mat22();
         }
      }
      
      b2internal var §!p§:b2Vec2;
      
      b2internal var §+!f§:Vector.<b2Vec2>;
      
      b2internal var §%!L§:Vector.<b2Vec2>;
      
      b2internal var §6!U§:int;
      
      public function b2PolygonShape()
      {
         var _loc1_:Boolean = true;
         var _loc2_:Boolean = false;
         if(_loc1_ || _loc2_)
         {
            super();
            loop0:
            while(true)
            {
               §2!]§ = b2internal::=!';
               while(true)
               {
                  this.§!p§ = new b2Vec2();
                  while(!_loc2_)
                  {
                     while(true)
                     {
                        this.§+!f§ = new Vector.<b2Vec2>();
                        while(true)
                        {
                           if(!_loc2_)
                           {
                              continue;
                           }
                           continue loop0;
                        }
                     }
                     return;
                  }
               }
            }
         }
         §§goto(addr102);
      }
      
      public static function §for §(param1:Array, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc5_)
         {
            _loc3_.§-!e§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §9!b§(param1:Vector.<b2Vec2>, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && param1))
         {
            _loc3_.§6#§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §4Y§(param1:Number, param2:Number) : b2PolygonShape
      {
         var _loc4_:Boolean = true;
         var _loc5_:Boolean = false;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(_loc4_)
         {
            _loc3_.§;!X§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §8Q§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : b2PolygonShape
      {
         var _loc5_:b2PolygonShape;
         (_loc5_ = new b2PolygonShape()).§8C§(param1,param2,param3,param4);
         return _loc5_;
      }
      
      public static function §[K§(param1:b2Vec2, param2:b2Vec2) : b2PolygonShape
      {
         var _loc4_:Boolean = false;
         var _loc5_:Boolean = true;
         var _loc3_:b2PolygonShape = new b2PolygonShape();
         if(!(_loc4_ && b2PolygonShape))
         {
            _loc3_.§'G§(param1,param2);
         }
         return _loc3_;
      }
      
      public static function §5r§(param1:Vector.<b2Vec2>, param2:uint) : b2Vec2
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
         if(!(_loc18_ && param2))
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
         if(_loc17_ || _loc3_)
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
         while(_loc8_ < param2)
         {
            _loc9_ = param1[_loc8_];
            if(_loc17_)
            {
               _loc10_ = _loc8_ + 1 < param2 ? param1[int(_loc8_ + 1)] : param1[0];
               if(!(_loc18_ && param2))
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
                                 for(; !_loc18_; if(!(_loc17_ || _loc3_))
                                 {
                                    continue;
                                 },§§goto(addr243),§§push(Number(§§pop())))
                                 {
                                    §§push(_loc6_);
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
                                             while(true)
                                             {
                                                §§push(_loc10_.x);
                                                while(true)
                                                {
                                                   §§push(_loc5_);
                                                   addr348:
                                                   while(_loc17_ || param1)
                                                   {
                                                      §§push(§§pop() - §§pop());
                                                      if(!_loc18_)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                      while(!_loc18_)
                                                      {
                                                         _loc13_ = §§pop();
                                                      }
                                                      continue loop1;
                                                   }
                                                   continue loop2;
                                                   loop27:
                                                   while(!(_loc18_ && _loc3_))
                                                   {
                                                      if(_loc18_)
                                                      {
                                                         continue loop9;
                                                      }
                                                      if(!(_loc17_ || param2))
                                                      {
                                                         continue loop3;
                                                      }
                                                      §§push(_loc15_);
                                                      loop28:
                                                      while(true)
                                                      {
                                                         if(_loc17_ || param2)
                                                         {
                                                            if(_loc17_)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               if(!_loc18_)
                                                               {
                                                                  if(!_loc17_)
                                                                  {
                                                                     continue loop8;
                                                                  }
                                                                  §§push(Number(§§pop()));
                                                               }
                                                               while(true)
                                                               {
                                                                  _loc16_ = §§pop();
                                                                  addr291:
                                                                  addr303:
                                                                  loop30:
                                                                  while(true)
                                                                  {
                                                                     if(!_loc18_)
                                                                     {
                                                                        addr293:
                                                                        if(_loc17_ || _loc3_)
                                                                        {
                                                                           §§push(_loc4_);
                                                                           if(_loc18_ && b2PolygonShape)
                                                                           {
                                                                              continue loop6;
                                                                           }
                                                                           addr189:
                                                                           if(!(_loc18_ && param1))
                                                                           {
                                                                              addr329:
                                                                              if(_loc17_ || b2PolygonShape)
                                                                              {
                                                                                 if(!_loc18_)
                                                                                 {
                                                                                    addr205:
                                                                                    if(_loc17_ || _loc3_)
                                                                                    {
                                                                                       continue loop28;
                                                                                    }
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc6_);
                                                                                       addr340:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() - §§pop());
                                                                                       }
                                                                                       §§goto(addr205);
                                                                                    }
                                                                                    addr339:
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    addr342:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc14_ = §§pop();
                                                                                       addr343:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc11_);
                                                                                          break loop30;
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                              while(!_loc18_)
                                                                              {
                                                                                 §§push(Number(§§pop()));
                                                                                 while(true)
                                                                                 {
                                                                                    _loc15_ = §§pop();
                                                                                    addr333:
                                                                                    while(!_loc18_)
                                                                                    {
                                                                                       §§push(0.5);
                                                                                       continue loop27;
                                                                                    }
                                                                                    §§goto(addr343);
                                                                                    §§goto(addr189);
                                                                                 }
                                                                              }
                                                                              §§goto(addr359);
                                                                              addr329:
                                                                           }
                                                                           §§goto(addr332);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§goto(addr339);
                                                                           §§goto(addr293);
                                                                        }
                                                                        addr362:
                                                                     }
                                                                     §§goto(addr333);
                                                                  }
                                                                  addr243:
                                                                  while(!(_loc18_ && param2))
                                                                  {
                                                                     §§push(_loc14_);
                                                                     break loop28;
                                                                  }
                                                                  §§goto(addr342);
                                                                  if(!(_loc17_ || _loc3_))
                                                                  {
                                                                     continue;
                                                                  }
                                                                  if(_loc18_)
                                                                  {
                                                                     continue loop27;
                                                                  }
                                                                  if(!_loc18_)
                                                                  {
                                                                     _loc4_ = §§pop();
                                                                     loop31:
                                                                     while(true)
                                                                     {
                                                                        _loc3_.§ v§(new b2Vec2(_loc5_,_loc6_));
                                                                        while(true)
                                                                        {
                                                                           _loc3_.§ v§(_loc9_);
                                                                           addr162:
                                                                           while(_loc17_)
                                                                           {
                                                                              continue loop31;
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                                  §§goto(addr303);
                                                               }
                                                            }
                                                            break;
                                                         }
                                                         addr328:
                                                         while(true)
                                                         {
                                                            §§goto(addr329);
                                                            continue loop28;
                                                         }
                                                      }
                                                      while(!_loc18_)
                                                      {
                                                         §§push(§§pop() * §§pop());
                                                         if(_loc17_)
                                                         {
                                                            §§goto(addr317);
                                                            §§push(_loc12_);
                                                         }
                                                         §§goto(addr329);
                                                      }
                                                      §§goto(addr348);
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
               §§goto(addr362);
            }
            §§goto(addr90);
         }
         if(!(_loc18_ && b2PolygonShape))
         {
            §§push(_loc3_);
            §§push(_loc3_.x);
            if(_loc17_)
            {
               §§push(§§pop() * (1 / _loc4_));
            }
            §§pop().x = §§pop();
            if(!(_loc18_ && param1))
            {
               addr407:
               §§push(_loc3_);
               §§push(_loc3_.y);
               if(!(_loc18_ && param2))
               {
                  §§push(§§pop() * (1 / _loc4_));
               }
               §§pop().y = §§pop();
            }
            return _loc3_;
         }
         §§goto(addr407);
      }
      
      b2internal static function §%!0§(param1:b2OBB, param2:Vector.<b2Vec2>, param3:int) : void
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
         var _loc20_:Number = NaN;
         var _loc21_:Number = NaN;
         var _loc22_:Number = NaN;
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
               if(_loc26_ || b2PolygonShape)
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
         if(_loc26_)
         {
            §§push(1);
            if(_loc26_)
            {
               _loc4_ = §§pop();
               if(_loc26_ || b2PolygonShape)
               {
                  while(true)
                  {
                     §§push(_loc4_);
                  }
                  addr1112:
               }
               §§goto(addr1115);
            }
            loop5:
            for(; §§pop() <= param3; §§goto(addr1112))
            {
               _loc7_ = _loc5_[int(_loc4_ - 1)];
               if(_loc26_ || param3)
               {
                  §§push(_loc5_[_loc4_].x - _loc7_.x);
                  while(true)
                  {
                     §§push(Number(§§pop()));
                     loop7:
                     while(true)
                     {
                        _loc8_ = §§pop();
                        while(true)
                        {
                           §§push(_loc5_[_loc4_].y - _loc7_.y);
                           loop9:
                           while(true)
                           {
                              §§push(Number(§§pop()));
                              while(true)
                              {
                                 _loc9_ = §§pop();
                                 loop11:
                                 while(true)
                                 {
                                    §§push(Number(Math.sqrt(_loc8_ * _loc8_ + _loc9_ * _loc9_)));
                                    loop12:
                                    while(true)
                                    {
                                       _loc10_ = §§pop();
                                       while(true)
                                       {
                                          §§push(_loc8_);
                                          loop14:
                                          while(true)
                                          {
                                             §§push(_loc10_);
                                             loop15:
                                             while(true)
                                             {
                                                §§push(§§pop() / §§pop());
                                                while(true)
                                                {
                                                   §§push(Number(§§pop()));
                                                   while(true)
                                                   {
                                                      _loc8_ = §§pop();
                                                      loop18:
                                                      while(true)
                                                      {
                                                         §§push(_loc9_);
                                                         while(!(_loc27_ && param2))
                                                         {
                                                            §§push(_loc10_);
                                                            loop20:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() / §§pop());
                                                               while(!_loc27_)
                                                               {
                                                                  §§push(Number(§§pop()));
                                                                  loop22:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop());
                                                                     while(true)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(-§§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                              loop26:
                                                                              while(true)
                                                                              {
                                                                                 _loc11_ = §§pop();
                                                                                 while(_loc26_)
                                                                                 {
                                                                                    §§push(_loc8_);
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(Number(§§pop()));
                                                                                       while(true)
                                                                                       {
                                                                                          _loc12_ = §§pop();
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(Number.MAX_VALUE));
                                                                                             while(true)
                                                                                             {
                                                                                                _loc13_ = §§pop();
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(Number(Number.MAX_VALUE));
                                                                                                   while(true)
                                                                                                   {
                                                                                                      _loc14_ = §§pop();
                                                                                                      if(!(_loc26_ || param1))
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      if(_loc27_ && param3)
                                                                                                      {
                                                                                                         break;
                                                                                                      }
                                                                                                      §§push(-Number.MAX_VALUE);
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         loop35:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            _loc15_ = §§pop();
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(-Number.MAX_VALUE);
                                                                                                               while(true)
                                                                                                               {
                                                                                                                  if(!_loc26_)
                                                                                                                  {
                                                                                                                     continue loop35;
                                                                                                                  }
                                                                                                                  if(_loc27_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  while(true)
                                                                                                                  {
                                                                                                                     _loc16_ = §§pop();
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(0);
                                                                                                                        loop40:
                                                                                                                        while(true)
                                                                                                                        {
                                                                                                                           _loc17_ = §§pop();
                                                                                                                           addr782:
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              continue loop40;
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  addr229:
                                                                                                                  if(!(_loc26_ || param2))
                                                                                                                  {
                                                                                                                     continue;
                                                                                                                  }
                                                                                                                  addr237:
                                                                                                                  §§push(Number(§§pop()));
                                                                                                                  if(_loc26_ || param2)
                                                                                                                  {
                                                                                                                     if(_loc26_)
                                                                                                                     {
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           if(!(_loc27_ && b2PolygonShape))
                                                                                                                           {
                                                                                                                              _loc24_ = §§pop();
                                                                                                                              if(!(_loc26_ || param2))
                                                                                                                              {
                                                                                                                                 continue loop5;
                                                                                                                              }
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 if(!_loc27_)
                                                                                                                                 {
                                                                                                                                    if(_loc26_ || param2)
                                                                                                                                    {
                                                                                                                                       if(false)
                                                                                                                                       {
                                                                                                                                          loop62:
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             §§push(0.5);
                                                                                                                                             if(_loc26_)
                                                                                                                                             {
                                                                                                                                                if(!_loc27_)
                                                                                                                                                {
                                                                                                                                                   if(_loc26_)
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc13_);
                                                                                                                                                      loop63:
                                                                                                                                                      for(; !_loc27_; if(!(_loc26_ || param1))
                                                                                                                                                      {
                                                                                                                                                         continue;
                                                                                                                                                      },if(_loc26_ || param2)
                                                                                                                                                      {
                                                                                                                                                         addr511:
                                                                                                                                                         if(!_loc27_)
                                                                                                                                                         {
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               if(!(_loc27_ && param3))
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc16_);
                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                  {
                                                                                                                                                                     if(!(_loc27_ && param1))
                                                                                                                                                                     {
                                                                                                                                                                        addr212:
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        if(!(_loc27_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              §§goto(addr222);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr237);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr524);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr696);
                                                                                                                                                                  }
                                                                                                                                                                  else
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr290);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr619);
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr587);
                                                                                                                                                         }
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(_loc26_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               while(_loc26_)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                     {
                                                                                                                                                                        if(!_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           continue loop22;
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr523);
                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr684);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr674);
                                                                                                                                                               }
                                                                                                                                                               §§goto(addr608);
                                                                                                                                                               addr514:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr704);
                                                                                                                                                         }
                                                                                                                                                         addr511:
                                                                                                                                                      },§§goto(addr552))
                                                                                                                                                      {
                                                                                                                                                         if(_loc27_)
                                                                                                                                                         {
                                                                                                                                                            continue loop15;
                                                                                                                                                         }
                                                                                                                                                         §§push(_loc15_);
                                                                                                                                                         while(true)
                                                                                                                                                         {
                                                                                                                                                            if(!_loc27_)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() + §§pop());
                                                                                                                                                               loop65:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     if(_loc26_ || param1)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(!_loc27_)
                                                                                                                                                                           {
                                                                                                                                                                              if(_loc27_ && param1)
                                                                                                                                                                              {
                                                                                                                                                                                 break;
                                                                                                                                                                              }
                                                                                                                                                                              if(!(_loc27_ && param2))
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc27_)
                                                                                                                                                                                 {
                                                                                                                                                                                    continue loop9;
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr792);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr647);
                                                                                                                                                                           }
                                                                                                                                                                           addr568:
                                                                                                                                                                           while(_loc26_)
                                                                                                                                                                           {
                                                                                                                                                                              _loc6_ = §§pop();
                                                                                                                                                                              while(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(param1.R);
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop().col1);
                                                                                                                                                                                       addr454:
                                                                                                                                                                                       addr426:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(_loc8_);
                                                                                                                                                                                          addr455:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§pop().x = §§pop();
                                                                                                                                                                                             break loop62;
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       while(!(_loc27_ && param3))
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop().col1);
                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             §§push(_loc9_);
                                                                                                                                                                                             if(!(_loc27_ && param3))
                                                                                                                                                                                             {
                                                                                                                                                                                                §§pop().y = §§pop();
                                                                                                                                                                                                while(!_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(_loc26_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(param1.R);
                                                                                                                                                                                                      loop57:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop().col2);
                                                                                                                                                                                                         addr413:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§push(_loc11_);
                                                                                                                                                                                                            addr414:
                                                                                                                                                                                                            while(true)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§pop().x = §§pop();
                                                                                                                                                                                                               addr415:
                                                                                                                                                                                                               while(_loc26_ || param1)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(param1.R);
                                                                                                                                                                                                                  if(_loc26_)
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     continue loop57;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr897:
                                                                                                                                                                                                                  _loc25_ = §§pop();
                                                                                                                                                                                                                  if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     addr1078:
                                                                                                                                                                                                                     §§push(param1.center);
                                                                                                                                                                                                                     §§push(_loc7_.x);
                                                                                                                                                                                                                     §§push(_loc25_.col1.x);
                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        addr1085:
                                                                                                                                                                                                                        §§push(§§pop() * _loc23_);
                                                                                                                                                                                                                        §§push(_loc25_.col2.x);
                                                                                                                                                                                                                        if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           addr1096:
                                                                                                                                                                                                                           §§push(§§pop() * _loc24_);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§pop().x = §§pop() + §§pop();
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  addr1110:
                                                                                                                                                                                                                  §§push(param1.center);
                                                                                                                                                                                                                  if(!(_loc27_ && param3))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(_loc7_.y);
                                                                                                                                                                                                                     if(!(_loc27_ && param2))
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        §§push(_loc25_.col1);
                                                                                                                                                                                                                        if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(§§pop().y);
                                                                                                                                                                                                                           if(_loc26_ || param2)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc23_);
                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    addr1022:
                                                                                                                                                                                                                                    if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       §§push(_loc25_.col2);
                                                                                                                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(§§pop().y);
                                                                                                                                                                                                                                          if(!(_loc27_ && param1))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             if(!_loc27_)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                §§push(_loc24_);
                                                                                                                                                                                                                                                if(_loc26_ || b2PolygonShape)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   addr1057:
                                                                                                                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                                   if(!_loc27_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      addr1060:
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(_loc26_ || param2)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         addr1068:
                                                                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                         if(_loc26_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               §§pop().y = §§pop();
                                                                                                                                                                                                                                                               addr969:
                                                                                                                                                                                                                                                               param1.§!N§.x = 0.5 * (_loc15_ - _loc13_);
                                                                                                                                                                                                                                                               addr961:
                                                                                                                                                                                                                                                               addr966:
                                                                                                                                                                                                                                                               addr968:
                                                                                                                                                                                                                                                               addr967:
                                                                                                                                                                                                                                                               addr965:
                                                                                                                                                                                                                                                               addr964:
                                                                                                                                                                                                                                                               if(!_loc27_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(param1.§!N§);
                                                                                                                                                                                                                                                                     if(_loc26_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(0.5);
                                                                                                                                                                                                                                                                        if(_loc26_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc27_ && param2))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc16_);
                                                                                                                                                                                                                                                                                 if(!(_loc27_ && param1))
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc14_);
                                                                                                                                                                                                                                                                                    if(_loc26_ || param1)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       addr946:
                                                                                                                                                                                                                                                                                       §§push(§§pop() - §§pop());
                                                                                                                                                                                                                                                                                       if(_loc26_ || param2)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          if(!_loc27_)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             addr956:
                                                                                                                                                                                                                                                                                             §§pop().y = §§pop() * §§pop();
                                                                                                                                                                                                                                                                                             if(_loc26_)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                if(false)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   §§goto(addr961);
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                                addr1111:
                                                                                                                                                                                                                                                                                                _loc4_++;
                                                                                                                                                                                                                                                                                                continue loop5;
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                             §§goto(addr961);
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                          §§goto(addr966);
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       §§goto(addr968);
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    §§goto(addr967);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 §§goto(addr946);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr965);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           §§goto(addr969);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        §§goto(addr956);
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr964);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1110);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1073:
                                                                                                                                                                                                                                                               §§goto(addr1073);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr1078);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1085);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1096);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             §§goto(addr1085);
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§goto(addr1057);
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr1085);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    §§goto(addr1078);
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1060);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr1057);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1022);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        §§goto(addr1078);
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     §§goto(addr1068);
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1078);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr611);
                                                                                                                                                                                                            }
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr680);
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr583);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          else
                                                                                                                                                                                          {
                                                                                                                                                                                             §§goto(addr454);
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr455);
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr765);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr652);
                                                                                                                                                                           }
                                                                                                                                                                           addr222:
                                                                                                                                                                           §§goto(addr635);
                                                                                                                                                                           if(!(_loc26_ || param2))
                                                                                                                                                                           {
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr229);
                                                                                                                                                                        }
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(0.95);
                                                                                                                                                                           break loop65;
                                                                                                                                                                        }
                                                                                                                                                                        addr532:
                                                                                                                                                                     }
                                                                                                                                                                     else
                                                                                                                                                                     {
                                                                                                                                                                        addr722:
                                                                                                                                                                        §§push(_loc20_);
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr723);
                                                                                                                                                                  }
                                                                                                                                                                  break;
                                                                                                                                                                  addr169:
                                                                                                                                                                  if(_loc26_ || param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue loop63;
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  if(!(_loc27_ && b2PolygonShape))
                                                                                                                                                                  {
                                                                                                                                                                     addr541:
                                                                                                                                                                     §§push(_loc6_);
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() * §§pop());
                                                                                                                                                                        addr552:
                                                                                                                                                                        while(_loc26_)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() < §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              if(!(_loc26_ || b2PolygonShape))
                                                                                                                                                                              {
                                                                                                                                                                                 continue loop5;
                                                                                                                                                                              }
                                                                                                                                                                              if(_loc26_)
                                                                                                                                                                              {
                                                                                                                                                                                 if(_loc26_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(_loc18_);
                                                                                                                                                                                    loop48:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§goto(addr568);
                                                                                                                                                                                       §§push(Number(§§pop()));
                                                                                                                                                                                       addr329:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc27_ && param3)
                                                                                                                                                                                          {
                                                                                                                                                                                             continue loop48;
                                                                                                                                                                                          }
                                                                                                                                                                                          if(_loc27_)
                                                                                                                                                                                          {
                                                                                                                                                                                             break;
                                                                                                                                                                                          }
                                                                                                                                                                                          §§goto(addr338);
                                                                                                                                                                                       }
                                                                                                                                                                                       addr523:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          addr524:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc26_ || param2)
                                                                                                                                                                                             {
                                                                                                                                                                                                _loc18_ = §§pop();
                                                                                                                                                                                                §§goto(addr532);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr713);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                    }
                                                                                                                                                                                    addr567:
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr624);
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr588);
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr1111);
                                                                                                                                                                        }
                                                                                                                                                                        §§goto(addr684);
                                                                                                                                                                     }
                                                                                                                                                                     addr541:
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr724);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr541);
                                                                                                                                                         }
                                                                                                                                                      }
                                                                                                                                                      continue loop20;
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr684);
                                                                                                                                                }
                                                                                                                                                §§goto(addr624);
                                                                                                                                             }
                                                                                                                                             else
                                                                                                                                             {
                                                                                                                                                §§goto(addr329);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          while(_loc26_)
                                                                                                                                          {
                                                                                                                                             §§goto(addr426);
                                                                                                                                             §§push(param1.R);
                                                                                                                                          }
                                                                                                                                          §§goto(addr571);
                                                                                                                                          addr456:
                                                                                                                                       }
                                                                                                                                       else
                                                                                                                                       {
                                                                                                                                          §§push(param1.R);
                                                                                                                                       }
                                                                                                                                       §§goto(addr897);
                                                                                                                                    }
                                                                                                                                    §§goto(addr707);
                                                                                                                                 }
                                                                                                                                 §§goto(addr456);
                                                                                                                              }
                                                                                                                              §§goto(addr415);
                                                                                                                           }
                                                                                                                           §§goto(addr733);
                                                                                                                        }
                                                                                                                        §§goto(addr650);
                                                                                                                     }
                                                                                                                     §§goto(addr586);
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           §§push(_loc16_);
                                                                                                                           if(_loc26_)
                                                                                                                           {
                                                                                                                              §§push(_loc14_);
                                                                                                                              if(!_loc27_)
                                                                                                                              {
                                                                                                                                 §§goto(addr511);
                                                                                                                                 §§push(§§pop() - §§pop());
                                                                                                                              }
                                                                                                                              §§goto(addr541);
                                                                                                                           }
                                                                                                                           §§goto(addr511);
                                                                                                                        }
                                                                                                                        §§goto(addr237);
                                                                                                                     }
                                                                                                                     §§goto(addr777);
                                                                                                                     addr502:
                                                                                                                  }
                                                                                                                  §§goto(addr776);
                                                                                                               }
                                                                                                               continue loop14;
                                                                                                            }
                                                                                                         }
                                                                                                         if(!(_loc26_ || param3))
                                                                                                         {
                                                                                                            continue;
                                                                                                         }
                                                                                                         §§push(_loc13_);
                                                                                                         if(_loc26_)
                                                                                                         {
                                                                                                            §§goto(addr502);
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                         }
                                                                                                         §§goto(addr511);
                                                                                                      }
                                                                                                      if(!(_loc26_ || param1))
                                                                                                      {
                                                                                                         continue;
                                                                                                      }
                                                                                                      if(!_loc26_)
                                                                                                      {
                                                                                                         continue loop26;
                                                                                                      }
                                                                                                      _loc23_ = §§pop();
                                                                                                      if(!(_loc26_ || param3))
                                                                                                      {
                                                                                                         continue loop5;
                                                                                                      }
                                                                                                      if(!_loc27_)
                                                                                                      {
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            if(!_loc27_)
                                                                                                            {
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  §§push(0.5);
                                                                                                                  if(_loc26_ || param3)
                                                                                                                  {
                                                                                                                     if(!_loc27_)
                                                                                                                     {
                                                                                                                        if(!_loc27_)
                                                                                                                        {
                                                                                                                           if(!(_loc27_ && param1))
                                                                                                                           {
                                                                                                                              if(_loc26_)
                                                                                                                              {
                                                                                                                                 §§push(_loc14_);
                                                                                                                                 if(_loc26_)
                                                                                                                                 {
                                                                                                                                    §§goto(addr169);
                                                                                                                                 }
                                                                                                                                 §§goto(addr212);
                                                                                                                              }
                                                                                                                              §§goto(addr655);
                                                                                                                           }
                                                                                                                           §§goto(addr598);
                                                                                                                        }
                                                                                                                        §§goto(addr514);
                                                                                                                     }
                                                                                                                     §§goto(addr329);
                                                                                                                  }
                                                                                                                  §§goto(addr222);
                                                                                                               }
                                                                                                               §§goto(addr733);
                                                                                                            }
                                                                                                            §§goto(addr642);
                                                                                                         }
                                                                                                         §§goto(addr470);
                                                                                                      }
                                                                                                      §§goto(addr404);
                                                                                                   }
                                                                                                   continue loop18;
                                                                                                }
                                                                                                while(!(_loc27_ && param1))
                                                                                                {
                                                                                                   §§goto(addr722);
                                                                                                   §§push(_loc9_);
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 continue loop11;
                                                                              }
                                                                           }
                                                                        }
                                                                     }
                                                                  }
                                                               }
                                                               continue loop12;
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
                           }
                        }
                     }
                  }
               }
               §§goto(addr644);
            }
         }
         addr1115:
      }
      
      override public function Copy() : b2Shape
      {
         var _loc2_:Boolean = true;
         var _loc3_:Boolean = false;
         var _loc1_:b2PolygonShape = new b2PolygonShape();
         if(!_loc3_)
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
         if(!(_loc4_ && _loc2_))
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
            if(!(_loc4_ && param1))
            {
               this.§!p§.SetV(_loc2_.§!p§);
               loop0:
               while(true)
               {
                  this.§6!U§ = _loc2_.§6!U§;
                  loop1:
                  while(true)
                  {
                     this.§3!?§(this.§6!U§);
                     loop2:
                     while(_loc5_)
                     {
                        while(true)
                        {
                           _loc3_ = 0;
                           if(!(_loc4_ && this))
                           {
                              continue loop1;
                           }
                           continue loop2;
                        }
                        while(true)
                        {
                           if(_loc3_ < this.§6!U§)
                           {
                              this.§+!f§[_loc3_].SetV(_loc2_.§+!f§[_loc3_]);
                              if(_loc5_ || this)
                              {
                                 loop5:
                                 do
                                 {
                                    this.§%!L§[_loc3_].SetV(_loc2_.§%!L§[_loc3_]);
                                    while(true)
                                    {
                                       _loc3_++;
                                       if(!_loc5_)
                                       {
                                          break;
                                       }
                                       if(!_loc4_)
                                       {
                                          continue loop5;
                                       }
                                    }
                                 }
                                 while(false);
                                 
                                 continue;
                              }
                           }
                           §§goto(addr152);
                        }
                     }
                     continue loop0;
                  }
               }
            }
            §§goto(addr125);
         }
         addr152:
      }
      
      public function §-!e§(param1:Array, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc4_:b2Vec2 = null;
         var _loc3_:Vector.<b2Vec2> = new Vector.<b2Vec2>();
         for each(_loc4_ in param1)
         {
            if(!(_loc8_ && param2))
            {
               _loc3_.push(_loc4_);
            }
         }
         if(_loc7_ || param1)
         {
            this.§6#§(_loc3_,param2);
         }
      }
      
      public function §6#§(param1:Vector.<b2Vec2>, param2:Number = 0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:b2Vec2 = null;
         if(!(_loc8_ && this))
         {
            §§push(param2);
            if(_loc7_)
            {
               if(§§pop() == 0)
               {
                  while(true)
                  {
                     §§push(Number(param1.length));
                     addr240:
                     while(true)
                     {
                        param2 = §§pop();
                        addr241:
                        while(true)
                        {
                        }
                     }
                     addr198:
                     if(_loc8_ && param2)
                     {
                        continue;
                     }
                     loop7:
                     while(true)
                     {
                        §§push(_loc3_);
                        if(_loc7_ || param1)
                        {
                           §§push(this.§6!U§);
                           loop8:
                           while(true)
                           {
                              if(§§pop() >= §§pop())
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    §§push(0);
                                    while(true)
                                    {
                                       _loc3_ = §§pop();
                                       addr74:
                                       if(!(_loc7_ || param1))
                                       {
                                          continue;
                                       }
                                       §§push(1);
                                       if(_loc7_ || this)
                                       {
                                          addr90:
                                          §§push(int(§§pop() + §§pop()));
                                          if(_loc7_)
                                          {
                                             addr99:
                                             §§push(int(§§pop()));
                                             if(!(_loc8_ && param2))
                                             {
                                                addr107:
                                                _loc5_ = §§pop();
                                                if(!_loc8_)
                                                {
                                                   if(!(_loc8_ && this))
                                                   {
                                                      if(!_loc8_)
                                                      {
                                                         if(false)
                                                         {
                                                            while(true)
                                                            {
                                                            }
                                                            addr121:
                                                         }
                                                         else
                                                         {
                                                            _loc6_ = b2Math.§8!Y§(this.§+!f§[_loc5_],this.§+!f§[_loc4_]);
                                                            if(!_loc8_)
                                                            {
                                                               b2Settings.b2Assert(_loc6_.§,H§() > Number.MIN_VALUE);
                                                               this.§%!L§[_loc3_].SetV(b2Math.§!!3§(_loc6_,1));
                                                               addr282:
                                                               if(!(_loc8_ && param1))
                                                               {
                                                                  addr263:
                                                                  this.§%!L§[_loc3_].Normalize();
                                                                  if(_loc7_)
                                                                  {
                                                                     _loc3_++;
                                                                     if(_loc7_)
                                                                     {
                                                                        if(false)
                                                                        {
                                                                           §§goto(addr263);
                                                                        }
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc3_);
                                                                           addr299:
                                                                           loop13:
                                                                           while(true)
                                                                           {
                                                                              §§push(this.§6!U§);
                                                                              addr301:
                                                                              loop14:
                                                                              while(true)
                                                                              {
                                                                                 if(§§pop() >= §§pop())
                                                                                 {
                                                                                    if(_loc7_ || this)
                                                                                    {
                                                                                       addr319:
                                                                                       this.§!p§ = §5r§(this.§+!f§,this.§6!U§);
                                                                                       §§goto(addr327);
                                                                                    }
                                                                                    addr327:
                                                                                    return;
                                                                                 }
                                                                                 §§push(_loc3_);
                                                                                 if(_loc7_)
                                                                                 {
                                                                                    addr128:
                                                                                    §§push(int(§§pop()));
                                                                                    while(true)
                                                                                    {
                                                                                       _loc4_ = §§pop();
                                                                                       addr129:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc3_);
                                                                                          if(_loc8_ && param2)
                                                                                          {
                                                                                             break;
                                                                                          }
                                                                                          §§push(1);
                                                                                          if(_loc7_ || _loc3_)
                                                                                          {
                                                                                             continue loop8;
                                                                                          }
                                                                                          continue loop14;
                                                                                       }
                                                                                       continue loop13;
                                                                                    }
                                                                                    addr128:
                                                                                 }
                                                                                 §§goto(addr128);
                                                                              }
                                                                           }
                                                                        }
                                                                        addr298:
                                                                     }
                                                                     §§goto(addr263);
                                                                  }
                                                                  §§goto(addr282);
                                                                  addr289:
                                                               }
                                                               addr297:
                                                               §§goto(addr297);
                                                            }
                                                            §§goto(addr289);
                                                         }
                                                         §§goto(addr298);
                                                      }
                                                      else
                                                      {
                                                         while(true)
                                                         {
                                                            if(!(_loc7_ || param2))
                                                            {
                                                               _loc3_++;
                                                               if(!(_loc7_ || param2))
                                                               {
                                                                  break;
                                                               }
                                                               continue loop7;
                                                               addr190:
                                                            }
                                                            §§goto(addr121);
                                                         }
                                                         addr161:
                                                      }
                                                      §§goto(addr319);
                                                   }
                                                   §§goto(addr129);
                                                }
                                                §§goto(addr319);
                                             }
                                             §§goto(addr299);
                                          }
                                          else
                                          {
                                             addr97:
                                             if(!_loc8_)
                                             {
                                                §§goto(addr99);
                                             }
                                          }
                                          §§goto(addr128);
                                       }
                                       §§goto(addr301);
                                    }
                                 }
                                 §§goto(addr161);
                              }
                              else
                              {
                                 this.§+!f§[_loc3_].SetV(param1[_loc3_]);
                              }
                              §§goto(addr190);
                           }
                        }
                        §§goto(addr299);
                     }
                     addr205:
                  }
               }
               loop1:
               while(true)
               {
                  b2Settings.b2Assert(2 <= param2);
                  addr231:
                  loop4:
                  while(true)
                  {
                     this.§6!U§ = param2;
                     while(true)
                     {
                        if(_loc7_)
                        {
                           if(!(_loc7_ || _loc3_))
                           {
                              break;
                           }
                           continue;
                        }
                        continue loop4;
                     }
                     continue loop1;
                  }
                  §§goto(addr205);
               }
            }
            §§goto(addr240);
         }
         §§goto(addr231);
      }
      
      public function §;!X§(param1:Number, param2:Number) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(_loc3_)
         {
            this.§6!U§ = 4;
            while(true)
            {
               this.§3!?§(4);
               while(true)
               {
                  this.§+!f§[0].Set(-param1,-param2);
                  loop2:
                  while(!(_loc4_ && _loc3_))
                  {
                     this.§+!f§[1].Set(param1,-param2);
                     loop3:
                     while(true)
                     {
                        this.§+!f§[2].Set(param1,param2);
                        while(true)
                        {
                           this.§+!f§[3].Set(-param1,param2);
                           loop5:
                           while(true)
                           {
                              this.§%!L§[0].Set(0,-1);
                              loop6:
                              while(true)
                              {
                                 this.§%!L§[1].Set(1,0);
                                 while(!_loc4_)
                                 {
                                    this.§%!L§[2].Set(0,1);
                                    continue loop6;
                                    if(_loc3_ || param1)
                                    {
                                       if(_loc3_)
                                       {
                                          if(!_loc4_)
                                          {
                                             return;
                                          }
                                          continue loop2;
                                       }
                                       continue loop5;
                                    }
                                 }
                                 continue loop3;
                              }
                           }
                           if(!(_loc3_ || param2))
                           {
                              continue;
                           }
                           this.§%!L§[3].Set(-1,0);
                           §§goto(addr49);
                        }
                     }
                  }
               }
               if(!(_loc3_ || param1))
               {
                  continue;
               }
               §§goto(addr63);
            }
         }
         §§goto(addr145);
      }
      
      public function §8C§(param1:Number, param2:Number, param3:b2Vec2 = null, param4:Number = 0.0) : void
      {
         var _loc7_:Boolean = true;
         var _loc8_:Boolean = false;
         if(_loc7_)
         {
            this.§6!U§ = 4;
            while(true)
            {
               this.§3!?§(4);
               addr160:
               while(true)
               {
                  this.§+!f§[0].Set(-param1,-param2);
               }
            }
            addr164:
         }
         loop2:
         while(true)
         {
            this.§+!f§[1].Set(param1,-param2);
            while(true)
            {
               this.§+!f§[2].Set(param1,param2);
               loop4:
               while(_loc7_ || param2)
               {
                  this.§+!f§[3].Set(-param1,param2);
                  while(true)
                  {
                     this.§%!L§[0].Set(0,-1);
                     while(_loc7_)
                     {
                        this.§%!L§[1].Set(1,0);
                        continue loop2;
                        addr37:
                        if(_loc8_ && param2)
                        {
                           continue;
                        }
                        if(false)
                        {
                           loop9:
                           while(true)
                           {
                              this.§%!L§[3].Set(-1,0);
                              while(!_loc8_)
                              {
                                 this.§!p§ = param3;
                                 if(!(_loc8_ && param1))
                                 {
                                    addr30:
                                    if(_loc7_ || this)
                                    {
                                       continue loop9;
                                    }
                                    continue loop2;
                                 }
                              }
                              addr65:
                              while(true)
                              {
                                 if(!_loc8_)
                                 {
                                    if(_loc7_)
                                    {
                                       if(!_loc8_)
                                       {
                                          continue loop9;
                                       }
                                       §§goto(addr164);
                                    }
                                    break;
                                 }
                                 continue loop4;
                              }
                              §§goto(addr160);
                           }
                           continue;
                        }
                        var _loc5_:b2Transform;
                        (_loc5_ = new b2Transform()).position = param3;
                        if(!(_loc8_ && this))
                        {
                           _loc5_.R.Set(param4);
                        }
                        var _loc6_:int = 0;
                        addr186:
                        if(_loc6_ >= this.§6!U§)
                        {
                           if(!_loc7_)
                           {
                              addr198:
                              if(!(_loc8_ && param2))
                              {
                                 if(!(_loc8_ && param1))
                                 {
                                    §§goto(addr186);
                                 }
                                 this.§%!L§[_loc6_] = b2Math.§ !$§(_loc5_.R,this.§%!L§[_loc6_]);
                                 addr250:
                              }
                              _loc6_++;
                              §§goto(addr198);
                           }
                           return;
                        }
                        this.§+!f§[_loc6_] = b2Math.§,p§(_loc5_,this.§+!f§[_loc6_]);
                        §§goto(addr250);
                     }
                  }
               }
            }
         }
      }
      
      public function §'G§(param1:b2Vec2, param2:b2Vec2) : void
      {
         var _loc3_:Boolean = true;
         var _loc4_:Boolean = false;
         if(!_loc4_)
         {
            this.§6!U§ = 2;
         }
         while(true)
         {
            this.§3!?§(2);
            while(true)
            {
               this.§+!f§[0].SetV(param1);
               addr217:
               while(true)
               {
                  this.§+!f§[1].SetV(param2);
                  while(true)
                  {
                     §§push(this.§!p§);
                     loop4:
                     while(true)
                     {
                        §§push(0.5);
                        addr184:
                        while(true)
                        {
                           §§push(param1.x);
                           addr186:
                           while(true)
                           {
                              §§push(param2.x);
                              addr188:
                              while(true)
                              {
                                 §§push(§§pop() + §§pop());
                                 addr189:
                                 while(true)
                                 {
                                    §§push(§§pop() * §§pop());
                                    addr190:
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
                     addr49:
                     if(!(_loc4_ && this))
                     {
                        return;
                     }
                  }
               }
               addr73:
               if(_loc4_ && param2)
               {
                  continue;
               }
               this.§%!L§[1].y = -this.§%!L§[0].y;
               addr80:
               if(_loc3_ || param1)
               {
                  addr42:
                  if(!(_loc3_ || param2))
                  {
                     while(true)
                     {
                        this.§%!L§[1].x = -this.§%!L§[0].x;
                        addr69:
                        while(true)
                        {
                           if(!_loc4_)
                           {
                              if(!_loc3_)
                              {
                                 break;
                              }
                              §§goto(addr73);
                           }
                           §§goto(addr100);
                           §§goto(addr80);
                        }
                        §§goto(addr217);
                        §§goto(addr42);
                     }
                     addr87:
                  }
                  §§goto(addr49);
               }
               §§goto(addr69);
            }
            if(!(_loc3_ || this))
            {
               continue;
            }
            this.§%!L§[0].Normalize();
            §§goto(addr87);
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
         if(!(_loc11_ && param1))
         {
            §§push(§§pop() - param1.position.x);
            if(!_loc11_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc5_:* = §§pop();
            §§push(param2.y);
            if(!(_loc11_ && param1))
            {
               §§push(§§pop() - param1.position.y);
               if(!(_loc11_ && param1))
               {
                  addr63:
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(_loc5_);
               if(_loc12_)
               {
                  §§push(_loc4_.col1.x);
                  if(!(_loc11_ && param2))
                  {
                     §§push(§§pop() * §§pop());
                     if(!_loc11_)
                     {
                        §§push(_loc6_);
                        if(_loc11_ && param2)
                        {
                        }
                        §§goto(addr93);
                     }
                     addr93:
                     §§push(§§pop() + §§pop() * _loc4_.col1.y);
                     if(!_loc12_)
                     {
                     }
                     var _loc7_:* = §§pop();
                     §§push(_loc5_);
                     if(!_loc11_)
                     {
                        §§push(_loc4_.col2.x);
                        if(_loc12_)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc11_ && param1))
                           {
                              §§push(_loc6_);
                              if(_loc12_)
                              {
                                 addr117:
                                 §§push(§§pop() * _loc4_.col2.y);
                              }
                              §§push(§§pop() + §§pop());
                              if(_loc12_ || this)
                              {
                              }
                           }
                           §§goto(addr130);
                        }
                        §§goto(addr117);
                     }
                     addr130:
                     var _loc8_:Number = §§pop();
                     var _loc9_:int = 0;
                     while(true)
                     {
                        if(_loc9_ >= this.§6!U§)
                        {
                           return true;
                        }
                        _loc3_ = this.§+!f§[_loc9_];
                        if(!(_loc11_ && param2))
                        {
                           §§push(_loc7_);
                           if(!(_loc11_ && this))
                           {
                              §§push(_loc3_.x);
                              if(_loc12_)
                              {
                                 §§push(§§pop() - §§pop());
                                 if(!(_loc11_ && param2))
                                 {
                                    §§push(Number(§§pop()));
                                    if(!(_loc11_ && param2))
                                    {
                                       _loc5_ = §§pop();
                                       if(!(_loc11_ && param1))
                                       {
                                          §§push(_loc8_);
                                          if(_loc11_ && this)
                                          {
                                          }
                                          addr208:
                                          _loc6_ = §§pop();
                                          addr209:
                                          _loc3_ = this.§%!L§[_loc9_];
                                          if(!(_loc11_ && this))
                                          {
                                             §§push(_loc3_.x);
                                             if(_loc12_)
                                             {
                                                §§push(_loc5_);
                                                if(_loc12_ || param1)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(_loc12_)
                                                   {
                                                      §§push(_loc3_.y);
                                                      if(!(_loc11_ && this))
                                                      {
                                                         §§push(§§pop() * _loc6_);
                                                         if(_loc12_ || _loc3_)
                                                         {
                                                            §§push(§§pop() + §§pop());
                                                            if(!(_loc11_ && param1))
                                                            {
                                                               addr263:
                                                               §§push(Number(§§pop()));
                                                               if(!(_loc11_ && param2))
                                                               {
                                                                  addr271:
                                                                  §§push(§§pop());
                                                                  if(_loc12_)
                                                                  {
                                                                     addr274:
                                                                     _loc10_ = §§pop();
                                                                  }
                                                                  if(§§pop() > §§pop())
                                                                  {
                                                                     if(!_loc11_)
                                                                     {
                                                                        break;
                                                                     }
                                                                  }
                                                                  else
                                                                  {
                                                                     _loc9_++;
                                                                  }
                                                                  continue;
                                                               }
                                                               §§push(0);
                                                            }
                                                            §§goto(addr271);
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr271);
                                                }
                                                §§goto(addr274);
                                             }
                                             §§goto(addr263);
                                          }
                                          break;
                                       }
                                       §§goto(addr209);
                                    }
                                    addr204:
                                    §§push(§§pop() - _loc3_.y);
                                    if(!_loc12_)
                                    {
                                    }
                                 }
                                 §§goto(addr208);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr204);
                           }
                        }
                        §§goto(addr208);
                     }
                     return false;
                     §§push(Number(§§pop()));
                  }
               }
               §§goto(addr93);
            }
            §§goto(addr63);
         }
         §§goto(addr41);
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
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc4_:* = §§pop();
         §§push(param2.§!!O§);
         if(!_loc20_)
         {
            §§push(Number(§§pop()));
         }
         var _loc5_:* = §§pop();
         if(_loc21_ || param1)
         {
            §§push(param2.p1);
            if(!_loc20_)
            {
               §§push(§§pop().x);
               if(_loc21_)
               {
                  §§push(param3.position);
                  if(!(_loc20_ && param2))
                  {
                     §§push(§§pop().x);
                     if(!(_loc20_ && param3))
                     {
                        §§push(§§pop() - §§pop());
                        if(!_loc20_)
                        {
                           §§push(Number(§§pop()));
                           if(!_loc20_)
                           {
                              addr79:
                              _loc6_ = §§pop();
                              if(_loc21_ || param1)
                              {
                                 addr89:
                                 §§push(param2.p1.y);
                                 if(!_loc20_)
                                 {
                                    addr92:
                                    §§push(§§pop() - param3.position.y);
                                    if(_loc21_)
                                    {
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 _loc7_ = §§pop();
                                 addr100:
                                 _loc8_ = param3.R;
                                 §§push(_loc6_);
                                 if(_loc21_ || param2)
                                 {
                                    §§push(_loc8_.col1.x);
                                    if(_loc21_ || param1)
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(!_loc20_)
                                       {
                                          §§push(_loc7_);
                                          if(!(_loc20_ && param3))
                                          {
                                             addr137:
                                             §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                             if(_loc20_ && param3)
                                             {
                                             }
                                             var _loc10_:* = §§pop();
                                             §§push(_loc6_);
                                             if(!(_loc20_ && param3))
                                             {
                                                §§push(_loc8_.col2.x);
                                                if(_loc21_ || param2)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   if(!_loc20_)
                                                   {
                                                      addr168:
                                                      §§push(_loc7_);
                                                      if(_loc21_)
                                                      {
                                                         addr171:
                                                         §§push(§§pop() * _loc8_.col2.y);
                                                      }
                                                      §§push(§§pop() + §§pop());
                                                      if(_loc21_ || this)
                                                      {
                                                         §§push(Number(§§pop()));
                                                      }
                                                   }
                                                   var _loc11_:* = §§pop();
                                                   if(!(_loc20_ && param3))
                                                   {
                                                      §§push(param2.p2);
                                                      if(_loc21_)
                                                      {
                                                         §§push(§§pop().x);
                                                         if(_loc21_)
                                                         {
                                                            §§push(param3.position);
                                                            if(_loc21_ || param1)
                                                            {
                                                               §§push(§§pop().x);
                                                               if(_loc21_ || this)
                                                               {
                                                                  §§push(§§pop() - §§pop());
                                                                  if(_loc21_)
                                                                  {
                                                                     §§push(Number(§§pop()));
                                                                     if(_loc21_ || this)
                                                                     {
                                                                        _loc6_ = §§pop();
                                                                        if(!(_loc20_ && param3))
                                                                        {
                                                                           addr237:
                                                                           §§push(param2.p2.y);
                                                                           if(!(_loc20_ && this))
                                                                           {
                                                                              addr248:
                                                                              §§push(§§pop() - param3.position.y);
                                                                              if(!(_loc20_ && param2))
                                                                              {
                                                                                 addr257:
                                                                                 _loc7_ = Number(§§pop());
                                                                              }
                                                                           }
                                                                           §§goto(addr257);
                                                                        }
                                                                        _loc8_ = param3.R;
                                                                        §§push(_loc6_);
                                                                        if(_loc21_ || param3)
                                                                        {
                                                                           §§push(_loc8_.col1.x);
                                                                           if(!_loc20_)
                                                                           {
                                                                              §§push(§§pop() * §§pop());
                                                                              if(_loc21_)
                                                                              {
                                                                                 §§push(_loc7_);
                                                                                 if(!(_loc20_ && param2))
                                                                                 {
                                                                                    addr290:
                                                                                    §§push(§§pop() + §§pop() * _loc8_.col1.y);
                                                                                    if(!(_loc20_ && param3))
                                                                                    {
                                                                                       addr298:
                                                                                       §§push(Number(§§pop()));
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr290);
                                                                              }
                                                                              var _loc12_:* = §§pop();
                                                                              §§push(_loc6_);
                                                                              if(!(_loc20_ && this))
                                                                              {
                                                                                 §§push(_loc8_.col2.x);
                                                                                 if(_loc21_ || this)
                                                                                 {
                                                                                    §§push(§§pop() * §§pop());
                                                                                    if(!(_loc20_ && param2))
                                                                                    {
                                                                                       §§push(_loc7_);
                                                                                       if(_loc21_ || param1)
                                                                                       {
                                                                                          addr334:
                                                                                          §§push(§§pop() * _loc8_.col2.y);
                                                                                       }
                                                                                       §§push(§§pop() + §§pop());
                                                                                       if(_loc20_ && this)
                                                                                       {
                                                                                       }
                                                                                       addr347:
                                                                                       var _loc13_:* = §§pop();
                                                                                       §§push(_loc12_);
                                                                                       if(!(_loc20_ && this))
                                                                                       {
                                                                                          §§push(§§pop() - _loc10_);
                                                                                          if(_loc21_ || param3)
                                                                                          {
                                                                                             addr365:
                                                                                             §§push(Number(§§pop()));
                                                                                          }
                                                                                          var _loc14_:* = §§pop();
                                                                                          §§push(_loc13_);
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             §§push(§§pop() - _loc11_);
                                                                                             if(_loc21_ || param1)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                             }
                                                                                          }
                                                                                          var _loc15_:* = §§pop();
                                                                                          var _loc16_:* = -1;
                                                                                          var _loc17_:int = 0;
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(_loc17_);
                                                                                             if(!_loc20_)
                                                                                             {
                                                                                                §§push(this.§6!U§);
                                                                                                if(!(_loc20_ && param2))
                                                                                                {
                                                                                                   if(§§pop() >= §§pop())
                                                                                                   {
                                                                                                      §§goto(addr845);
                                                                                                   }
                                                                                                   §§push((_loc9_ = this.§+!f§[_loc17_]).x);
                                                                                                   if(!_loc20_)
                                                                                                   {
                                                                                                      §§push(_loc10_);
                                                                                                      if(_loc21_)
                                                                                                      {
                                                                                                         §§push(§§pop() - §§pop());
                                                                                                         if(!_loc20_)
                                                                                                         {
                                                                                                            §§push(Number(§§pop()));
                                                                                                            if(!_loc20_)
                                                                                                            {
                                                                                                               _loc6_ = §§pop();
                                                                                                               if(!_loc20_)
                                                                                                               {
                                                                                                                  §§push(_loc9_.y);
                                                                                                                  if(!_loc20_)
                                                                                                                  {
                                                                                                                     addr413:
                                                                                                                     addr414:
                                                                                                                     §§push(§§pop() - _loc11_);
                                                                                                                     if(_loc20_)
                                                                                                                     {
                                                                                                                     }
                                                                                                                     addr418:
                                                                                                                     _loc7_ = §§pop();
                                                                                                                     §§push((_loc9_ = this.§%!L§[_loc17_]).x);
                                                                                                                     if(_loc21_ || this)
                                                                                                                     {
                                                                                                                        §§push(_loc6_);
                                                                                                                        if(_loc21_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           if(!(_loc20_ && param2))
                                                                                                                           {
                                                                                                                              §§push(_loc9_.y);
                                                                                                                              if(_loc21_ || param2)
                                                                                                                              {
                                                                                                                                 §§push(_loc7_);
                                                                                                                                 if(!_loc20_)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    if(_loc21_)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!(_loc20_ && param3))
                                                                                                                                       {
                                                                                                                                          §§push(Number(§§pop()));
                                                                                                                                          if(!_loc20_)
                                                                                                                                          {
                                                                                                                                             _loc18_ = §§pop();
                                                                                                                                             if(_loc21_)
                                                                                                                                             {
                                                                                                                                                §§push(_loc9_.x);
                                                                                                                                                loop1:
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc14_);
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                      loop3:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc9_.y);
                                                                                                                                                         if(!_loc20_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc15_);
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               loop5:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  loop6:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                     if(!(_loc20_ && param3))
                                                                                                                                                                     {
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop());
                                                                                                                                                                           addr811:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              _loc19_ = §§pop();
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                        addr810:
                                                                                                                                                                     }
                                                                                                                                                                     loop7:
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(0);
                                                                                                                                                                        loop8:
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           if(§§pop() != §§pop())
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc19_);
                                                                                                                                                                              loop9:
                                                                                                                                                                              while(true)
                                                                                                                                                                              {
                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(0);
                                                                                                                                                                                    while(_loc21_)
                                                                                                                                                                                    {
                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                       loop11:
                                                                                                                                                                                       while(true)
                                                                                                                                                                                       {
                                                                                                                                                                                          §§push(§§pop());
                                                                                                                                                                                          loop12:
                                                                                                                                                                                          while(true)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(!§§pop())
                                                                                                                                                                                             {
                                                                                                                                                                                                loop21:
                                                                                                                                                                                                while(true)
                                                                                                                                                                                                {
                                                                                                                                                                                                   if(!§§pop())
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(_loc19_);
                                                                                                                                                                                                      loop22:
                                                                                                                                                                                                      for(; !(_loc20_ && param3); if(!(_loc21_ || param1))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         continue;
                                                                                                                                                                                                      },§§goto(addr656),§§push(_loc19_))
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(0);
                                                                                                                                                                                                         loop23:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc21_ || param1)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               §§push(§§pop() > §§pop());
                                                                                                                                                                                                               if(_loc21_)
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  §§push(§§pop());
                                                                                                                                                                                                                  if(!(_loc21_ || param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  if(§§pop())
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     loop32:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                              if(_loc21_ || param3)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                 continue loop23;
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              loop35:
                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(!_loc20_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                                                                                                                    loop27:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(!(_loc20_ && param1))
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          addr674:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             _loc5_ = §§pop();
                                                                                                                                                                                                                                             loop53:
                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                if(_loc21_)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   loop29:
                                                                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(_loc5_);
                                                                                                                                                                                                                                                      if(_loc20_ && this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop27;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(_loc20_ && this)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop35;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      if(!_loc20_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop1;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!(_loc21_ || this))
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop6;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         if(!_loc21_)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            continue loop3;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§push(_loc4_);
                                                                                                                                                                                                                                                         if(_loc21_ || param2)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!_loc20_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr547:
                                                                                                                                                                                                                                                               §§push(§§pop() - Number.MIN_VALUE);
                                                                                                                                                                                                                                                               if(!(_loc21_ || this))
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  while(!(_loc20_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop35;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     §§goto(addr547);
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  continue loop8;
                                                                                                                                                                                                                                                                  addr656:
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop23;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(!_loc21_)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  continue loop5;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               if(§§pop() < §§pop())
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!_loc20_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(false);
                                                                                                                                                                                                                                                                     if(_loc21_ || param3)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(!(_loc21_ || this))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop32;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           return §§pop();
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr758:
                                                                                                                                                                                                                                                                        addr789:
                                                                                                                                                                                                                                                                        while(_loc21_ || param3)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop21;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§pop();
                                                                                                                                                                                                                                                                           addr790:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                                                                              continue loop1;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc21_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop11;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(§§pop())
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    if(!_loc20_)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                       if(!(_loc20_ && this))
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          continue loop22;
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop27;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                    addr767:
                                                                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                                                                       §§push(_loc18_);
                                                                                                                                                                                                                                                                                       addr768:
                                                                                                                                                                                                                                                                                       while(!_loc20_)
                                                                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                                                                          §§push(_loc19_);
                                                                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                                                                             §§push(§§pop() / §§pop());
                                                                                                                                                                                                                                                                                             addr772:
                                                                                                                                                                                                                                                                                             while(true)
                                                                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                                                addr773:
                                                                                                                                                                                                                                                                                                while(true)
                                                                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                                                                   _loc4_ = §§pop();
                                                                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                                                                       continue loop9;
                                                                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 continue loop22;
                                                                                                                                                                                                                                                                                 addr638:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr634:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  else
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     loop30:
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        if(_loc20_ && this)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           continue loop53;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(_loc20_ && param2)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           break;
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        if(!_loc20_)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              continue loop30;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr595:
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        else
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§goto(addr790);
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  while(true)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(_loc21_)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        §§push(_loc17_);
                                                                                                                                                                                                                                                                        if(!(_loc20_ && param3))
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(int(§§pop()));
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        _loc16_ = §§pop();
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!_loc20_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc21_ || param3))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break loop29;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              continue loop29;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr724:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     else
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           §§push(_loc18_);
                                                                                                                                                                                                                                                                           addr815:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              §§push(0);
                                                                                                                                                                                                                                                                              addr816:
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 if(§§pop() < §§pop())
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    break loop29;
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        addr814:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        continue loop29;
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               §§goto(addr485);
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            else
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               addr633:
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr633:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr634);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         §§goto(addr547);
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      §§goto(addr768);
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr818);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr724);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr674:
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       §§goto(addr773);
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr772);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        addr818:
                                                                                                                                                                                                                        return false;
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                     addr709:
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr636);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               §§goto(addr709);
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr816);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         continue loop12;
                                                                                                                                                                                                      }
                                                                                                                                                                                                      continue loop7;
                                                                                                                                                                                                   }
                                                                                                                                                                                                   §§goto(addr767);
                                                                                                                                                                                                }
                                                                                                                                                                                             }
                                                                                                                                                                                             §§goto(addr789);
                                                                                                                                                                                          }
                                                                                                                                                                                       }
                                                                                                                                                                                       if(!(_loc21_ || this))
                                                                                                                                                                                       {
                                                                                                                                                                                          continue;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr758);
                                                                                                                                                                                       §§push(§§pop() < §§pop());
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr811);
                                                                                                                                                                                 }
                                                                                                                                                                                 §§goto(addr815);
                                                                                                                                                                              }
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr814);
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                               if(_loc20_ && this)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§goto(addr633);
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         §§goto(addr816);
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             §§goto(addr595);
                                                                                                                                          }
                                                                                                                                          §§goto(addr674);
                                                                                                                                       }
                                                                                                                                       §§goto(addr810);
                                                                                                                                    }
                                                                                                                                    §§goto(addr633);
                                                                                                                                 }
                                                                                                                                 §§goto(addr632);
                                                                                                                              }
                                                                                                                              §§goto(addr617);
                                                                                                                           }
                                                                                                                           §§goto(addr773);
                                                                                                                        }
                                                                                                                        §§goto(addr663);
                                                                                                                     }
                                                                                                                     §§goto(addr674);
                                                                                                                  }
                                                                                                                  §§goto(addr418);
                                                                                                                  §§push(Number(§§pop()));
                                                                                                               }
                                                                                                               §§goto(addr418);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr413);
                                                                                                      }
                                                                                                      §§goto(addr414);
                                                                                                   }
                                                                                                   §§goto(addr413);
                                                                                                }
                                                                                                §§goto(addr842);
                                                                                             }
                                                                                             break;
                                                                                          }
                                                                                          addr842:
                                                                                          if(§§pop() < §§pop())
                                                                                          {
                                                                                             return false;
                                                                                          }
                                                                                          if(!_loc20_)
                                                                                          {
                                                                                             addr845:
                                                                                             §§goto(addr848);
                                                                                          }
                                                                                          addr848:
                                                                                          if(_loc21_ || param3)
                                                                                          {
                                                                                             §§push(_loc16_);
                                                                                             break loop0;
                                                                                          }
                                                                                          param1.fraction = _loc4_;
                                                                                          _loc8_ = param3.R;
                                                                                          _loc9_ = this.§%!L§[_loc16_];
                                                                                          if(_loc21_)
                                                                                          {
                                                                                             §§push(param1.normal);
                                                                                             loop54:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(_loc8_.col1);
                                                                                                addr936:
                                                                                                while(true)
                                                                                                {
                                                                                                   §§push(§§pop().x);
                                                                                                   if(_loc21_)
                                                                                                   {
                                                                                                      §§push(_loc9_.x);
                                                                                                      if(!(_loc20_ && param1))
                                                                                                      {
                                                                                                         §§push(§§pop() * §§pop());
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(_loc8_.col2);
                                                                                                            addr961:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop().x);
                                                                                                            }
                                                                                                         }
                                                                                                         addr949:
                                                                                                      }
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(_loc9_.y);
                                                                                                         addr964:
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                            addr965:
                                                                                                            while(true)
                                                                                                            {
                                                                                                               §§push(§§pop() + §§pop());
                                                                                                            }
                                                                                                         }
                                                                                                      }
                                                                                                      addr962:
                                                                                                   }
                                                                                                   addr966:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§pop().x = §§pop();
                                                                                                      continue loop54;
                                                                                                   }
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                          return true;
                                                                                          §§push(0);
                                                                                       }
                                                                                       §§goto(addr365);
                                                                                    }
                                                                                    §§goto(addr347);
                                                                                    §§push(Number(§§pop()));
                                                                                 }
                                                                                 §§goto(addr334);
                                                                              }
                                                                              §§goto(addr347);
                                                                           }
                                                                           §§goto(addr290);
                                                                        }
                                                                        §§goto(addr298);
                                                                     }
                                                                  }
                                                                  §§goto(addr257);
                                                               }
                                                            }
                                                         }
                                                         §§goto(addr248);
                                                      }
                                                   }
                                                   §§goto(addr237);
                                                }
                                                §§goto(addr171);
                                             }
                                             §§goto(addr168);
                                          }
                                       }
                                       §§goto(addr137);
                                       §§push(Number(§§pop()));
                                    }
                                 }
                                 §§goto(addr137);
                              }
                              §§goto(addr100);
                           }
                        }
                     }
                  }
                  §§goto(addr92);
               }
               §§goto(addr79);
            }
         }
         §§goto(addr89);
      }
      
      override public function ComputeAABB(param1:b2AABB, param2:b2Transform) : void
      {
         var _loc12_:Boolean = true;
         var _loc13_:Boolean = false;
         var _loc10_:* = NaN;
         var _loc11_:Number = NaN;
         var _loc3_:b2Mat22 = param2.R;
         var _loc4_:b2Vec2 = this.§+!f§[0];
         §§push(param2.position.x);
         if(!(_loc13_ && param1))
         {
            §§push(_loc3_.col1.x);
            if(!(_loc13_ && param1))
            {
               §§push(_loc4_.x);
               if(!(_loc13_ && param1))
               {
                  §§push(§§pop() * §§pop());
                  if(!(_loc13_ && param2))
                  {
                     addr67:
                     §§push(_loc3_.col2.x);
                     if(!_loc13_)
                     {
                        addr72:
                        §§push(§§pop() * _loc4_.y);
                     }
                     §§push(§§pop() + §§pop());
                  }
                  §§push(§§pop() + §§pop());
                  if(!_loc13_)
                  {
                     addr79:
                     §§push(Number(§§pop()));
                  }
                  var _loc5_:* = §§pop();
                  §§push(param2.position.y);
                  if(!(_loc13_ && param1))
                  {
                     §§push(_loc3_.col1.y);
                     if(_loc12_)
                     {
                        §§push(_loc4_.x);
                        if(_loc12_ || this)
                        {
                           §§push(§§pop() * §§pop());
                           if(!(_loc13_ && param1))
                           {
                              addr113:
                              §§push(_loc3_.col2.y);
                              if(_loc12_)
                              {
                                 addr121:
                                 §§push(§§pop() + §§pop() * _loc4_.y);
                              }
                              §§goto(addr121);
                           }
                           §§push(§§pop() + §§pop());
                           if(_loc12_)
                           {
                              addr126:
                              var _loc6_:Number = §§pop();
                              §§push(_loc5_);
                              if(!_loc13_)
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc7_:* = §§pop();
                              §§push(_loc6_);
                              if(!(_loc13_ && _loc3_))
                              {
                                 §§push(Number(§§pop()));
                              }
                              var _loc8_:* = §§pop();
                              var _loc9_:int = 1;
                              while(_loc9_ < this.§6!U§)
                              {
                                 _loc4_ = this.§+!f§[_loc9_];
                                 if(_loc12_)
                                 {
                                    §§push(param2.position);
                                    loop1:
                                    while(true)
                                    {
                                       §§push(§§pop().x);
                                       addr523:
                                       while(true)
                                       {
                                          §§push(_loc3_.col1);
                                          addr525:
                                          while(true)
                                          {
                                             §§push(§§pop().x);
                                             addr526:
                                             while(true)
                                             {
                                                §§push(_loc4_.x);
                                                addr528:
                                                while(true)
                                                {
                                                   §§push(§§pop() * §§pop());
                                                   addr529:
                                                   while(true)
                                                   {
                                                      §§push(_loc3_.col2);
                                                      addr531:
                                                      while(true)
                                                      {
                                                         §§push(§§pop().x);
                                                         addr532:
                                                         while(true)
                                                         {
                                                            §§push(_loc4_.y);
                                                            addr534:
                                                            while(true)
                                                            {
                                                               §§push(§§pop() * §§pop());
                                                               addr535:
                                                               while(true)
                                                               {
                                                                  §§push(§§pop() + §§pop());
                                                                  addr536:
                                                                  while(true)
                                                                  {
                                                                     §§push(§§pop() + §§pop());
                                                                     if(_loc12_)
                                                                     {
                                                                        §§push(Number(§§pop()));
                                                                     }
                                                                     addr540:
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
                                 §§goto(addr345);
                              }
                              if(_loc12_)
                              {
                                 §§push(param1.§?`§);
                                 if(_loc12_ || this)
                                 {
                                    §§push(_loc5_);
                                    if(!_loc13_)
                                    {
                                       §§push(§§pop() - b2internal::'m);
                                       if(_loc12_ || this)
                                       {
                                          §§pop().x = §§pop();
                                          addr634:
                                          if(_loc12_)
                                          {
                                             addr628:
                                             §§push(param1.§?`§);
                                             §§push(_loc6_);
                                             if(_loc12_)
                                             {
                                                addr631:
                                                §§push(§§pop() - b2internal::'m);
                                             }
                                          }
                                          while(true)
                                          {
                                             §§push(param1.§[O§);
                                             loop61:
                                             while(true)
                                             {
                                                §§push(_loc7_);
                                                addr612:
                                                while(true)
                                                {
                                                   §§pop().x = §§pop() + b2internal::'m;
                                                   continue loop61;
                                                }
                                             }
                                             if(!(_loc13_ && this))
                                             {
                                                return;
                                             }
                                          }
                                          addr634:
                                       }
                                       §§pop().y = §§pop();
                                       §§goto(addr634);
                                    }
                                    §§goto(addr631);
                                 }
                                 §§goto(addr628);
                              }
                              §§goto(addr634);
                           }
                           §§goto(addr126);
                        }
                        §§goto(addr121);
                     }
                     §§goto(addr113);
                  }
                  §§goto(addr126);
               }
               §§goto(addr72);
            }
            §§goto(addr67);
         }
         §§goto(addr79);
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
         var _loc18_:* = NaN;
         var _loc19_:Number = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:Number = NaN;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc26_:* = NaN;
         if(!(_loc28_ && this))
         {
            if(this.§6!U§ == 2)
            {
               loop130:
               while(true)
               {
                  §§push(param1.center);
                  addr132:
                  while(true)
                  {
                     §§push(0.5);
                     if(!(_loc28_ && _loc3_))
                     {
                        §§push(§§pop() * (this.§+!f§[0].x + this.§+!f§[1].x));
                     }
                     addr152:
                     while(true)
                     {
                        §§pop().x = §§pop();
                        addr102:
                        §§push(0.5);
                        if(_loc27_ || _loc3_)
                        {
                           §§push(§§pop() * (this.§+!f§[0].y + this.§+!f§[1].y));
                        }
                        if(_loc27_)
                        {
                           continue loop130;
                        }
                     }
                  }
               }
            }
            else
            {
               §§push(0);
               if(!(_loc28_ && this))
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
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc5_:* = §§pop();
               §§push(0);
               if(!(_loc28_ && _loc3_))
               {
                  §§push(Number(§§pop()));
               }
               var _loc6_:* = §§pop();
               §§push(0);
               if(!(_loc28_ && param2))
               {
                  §§push(Number(§§pop()));
               }
               var _loc7_:* = §§pop();
               §§push(0);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc8_:* = §§pop();
               §§push(1 / 3);
               if(_loc27_)
               {
                  §§push(Number(§§pop()));
               }
               var _loc9_:* = §§pop();
               var _loc10_:int = 0;
               while(_loc10_ < this.§6!U§)
               {
                  _loc11_ = this.§+!f§[_loc10_];
                  if(_loc27_ || this)
                  {
                     _loc12_ = _loc10_ + 1 < this.§6!U§ ? this.§+!f§[int(_loc10_ + 1)] : this.§+!f§[0];
                     if(!_loc28_)
                     {
                        §§push(_loc11_.x);
                        loop1:
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
                                 loop4:
                                 while(true)
                                 {
                                    _loc13_ = §§pop();
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
                                                   while(true)
                                                   {
                                                      §§push(_loc12_.x);
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc7_);
                                                         while(true)
                                                         {
                                                            §§push(§§pop() - §§pop());
                                                            loop13:
                                                            while(true)
                                                            {
                                                               §§push(Number(§§pop()));
                                                               loop14:
                                                               while(_loc27_)
                                                               {
                                                                  if(_loc28_ && param1)
                                                                  {
                                                                     continue loop4;
                                                                  }
                                                                  _loc15_ = §§pop();
                                                                  loop15:
                                                                  while(true)
                                                                  {
                                                                     §§push(_loc12_.y);
                                                                     if(_loc27_ || _loc3_)
                                                                     {
                                                                        §§push(_loc8_);
                                                                        while(!_loc28_)
                                                                        {
                                                                           §§push(§§pop() - §§pop());
                                                                           while(true)
                                                                           {
                                                                              §§push(Number(§§pop()));
                                                                           }
                                                                        }
                                                                        continue loop2;
                                                                        addr1112:
                                                                     }
                                                                     loop18:
                                                                     while(_loc27_)
                                                                     {
                                                                        if(!(_loc27_ || _loc3_))
                                                                        {
                                                                           continue loop8;
                                                                        }
                                                                        _loc16_ = §§pop();
                                                                        while(true)
                                                                        {
                                                                           §§push(_loc13_);
                                                                           addr1092:
                                                                           addr940:
                                                                           while(true)
                                                                           {
                                                                              §§push(_loc16_);
                                                                              addr1093:
                                                                              while(true)
                                                                              {
                                                                                 §§push(§§pop() * §§pop());
                                                                                 addr1094:
                                                                                 while(true)
                                                                                 {
                                                                                    §§push(_loc14_);
                                                                                    addr1095:
                                                                                    while(true)
                                                                                    {
                                                                                       §§push(_loc15_);
                                                                                       addr1096:
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(§§pop() * §§pop());
                                                                                          addr1097:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(§§pop() - §§pop());
                                                                                             addr1098:
                                                                                             while(true)
                                                                                             {
                                                                                                §§push(Number(§§pop()));
                                                                                                addr1099:
                                                                                                while(true)
                                                                                                {
                                                                                                   _loc17_ = §§pop();
                                                                                                   addr1100:
                                                                                                   while(true)
                                                                                                   {
                                                                                                      §§push(0.5);
                                                                                                      if(_loc27_ || param1)
                                                                                                      {
                                                                                                         if(!(_loc27_ || _loc3_))
                                                                                                         {
                                                                                                            break;
                                                                                                         }
                                                                                                         §§push(_loc17_);
                                                                                                         while(true)
                                                                                                         {
                                                                                                            §§push(§§pop() * §§pop());
                                                                                                         }
                                                                                                      }
                                                                                                      addr1085:
                                                                                                      while(true)
                                                                                                      {
                                                                                                         §§push(Number(§§pop()));
                                                                                                         addr1086:
                                                                                                         while(!_loc28_)
                                                                                                         {
                                                                                                            _loc18_ = §§pop();
                                                                                                         }
                                                                                                         continue loop11;
                                                                                                      }
                                                                                                   }
                                                                                                   continue loop14;
                                                                                                }
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                              }
                                                                           }
                                                                           if(_loc28_ && param1)
                                                                           {
                                                                              continue;
                                                                           }
                                                                           §§push(_loc15_);
                                                                           while(true)
                                                                           {
                                                                              if(_loc27_)
                                                                              {
                                                                                 if(!(_loc28_ && param2))
                                                                                 {
                                                                                    §§push(Number(§§pop()));
                                                                                    loop76:
                                                                                    while(true)
                                                                                    {
                                                                                       _loc23_ = §§pop();
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(_loc16_);
                                                                                          loop78:
                                                                                          while(true)
                                                                                          {
                                                                                             §§push(Number(§§pop()));
                                                                                             loop79:
                                                                                             while(!_loc28_)
                                                                                             {
                                                                                                _loc24_ = §§pop();
                                                                                                loop80:
                                                                                                while(_loc27_ || _loc3_)
                                                                                                {
                                                                                                   §§push(_loc9_);
                                                                                                   if(_loc27_ || _loc3_)
                                                                                                   {
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         continue loop79;
                                                                                                      }
                                                                                                      if(!(_loc28_ && _loc3_))
                                                                                                      {
                                                                                                         §§push(0.25);
                                                                                                         if(_loc27_)
                                                                                                         {
                                                                                                            if(_loc27_ || param1)
                                                                                                            {
                                                                                                               if(!_loc28_)
                                                                                                               {
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     §§push(_loc21_);
                                                                                                                     while(true)
                                                                                                                     {
                                                                                                                        §§push(_loc21_);
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                           while(true)
                                                                                                                           {
                                                                                                                              §§push(_loc23_);
                                                                                                                              loop83:
                                                                                                                              while(_loc27_)
                                                                                                                              {
                                                                                                                                 §§push(_loc21_);
                                                                                                                                 while(true)
                                                                                                                                 {
                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                    addr795:
                                                                                                                                    loop85:
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§push(§§pop() + §§pop());
                                                                                                                                       if(!_loc28_)
                                                                                                                                       {
                                                                                                                                          if(!_loc28_)
                                                                                                                                          {
                                                                                                                                             §§push(_loc23_);
                                                                                                                                             loop86:
                                                                                                                                             for(; !_loc28_; if(!(_loc27_ || _loc3_))
                                                                                                                                             {
                                                                                                                                                continue;
                                                                                                                                             },§§goto(addr561),§§push(§§pop() + §§pop()))
                                                                                                                                             {
                                                                                                                                                §§push(_loc23_);
                                                                                                                                                while(true)
                                                                                                                                                {
                                                                                                                                                   §§push(§§pop() * §§pop());
                                                                                                                                                   addr805:
                                                                                                                                                   while(_loc27_ || this)
                                                                                                                                                   {
                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                      loop89:
                                                                                                                                                      while(true)
                                                                                                                                                      {
                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                         addr814:
                                                                                                                                                         loop94:
                                                                                                                                                         while(!_loc28_)
                                                                                                                                                         {
                                                                                                                                                            §§push(_loc19_);
                                                                                                                                                            while(_loc27_ || this)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc21_);
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() * §§pop());
                                                                                                                                                                  loop97:
                                                                                                                                                                  while(_loc27_ || param2)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc19_);
                                                                                                                                                                     loop98:
                                                                                                                                                                     while(_loc27_)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc23_);
                                                                                                                                                                        while(true)
                                                                                                                                                                        {
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           loop100:
                                                                                                                                                                           while(true)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(§§pop() + §§pop());
                                                                                                                                                                              if(!_loc28_)
                                                                                                                                                                              {
                                                                                                                                                                                 §§push(§§pop() + §§pop());
                                                                                                                                                                                 while(true)
                                                                                                                                                                                 {
                                                                                                                                                                                    §§push(§§pop() * §§pop());
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(!_loc28_)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc27_ || param1)
                                                                                                                                                                                          {
                                                                                                                                                                                             if(_loc27_ || param1)
                                                                                                                                                                                             {
                                                                                                                                                                                                §§push(0.5);
                                                                                                                                                                                                if(_loc27_)
                                                                                                                                                                                                {
                                                                                                                                                                                                   §§push(_loc19_);
                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() * §§pop());
                                                                                                                                                                                                      }
                                                                                                                                                                                                      addr865:
                                                                                                                                                                                                   }
                                                                                                                                                                                                   while(true)
                                                                                                                                                                                                   {
                                                                                                                                                                                                      §§push(§§pop() * §§pop());
                                                                                                                                                                                                      loop93:
                                                                                                                                                                                                      while(true)
                                                                                                                                                                                                      {
                                                                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                                                                         addr878:
                                                                                                                                                                                                         loop103:
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            if(_loc27_)
                                                                                                                                                                                                            {
                                                                                                                                                                                                               addr880:
                                                                                                                                                                                                               if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                               {
                                                                                                                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                                                                                                                  {
                                                                                                                                                                                                                     §§push(Number(§§pop()));
                                                                                                                                                                                                                     loop104:
                                                                                                                                                                                                                     while(true)
                                                                                                                                                                                                                     {
                                                                                                                                                                                                                        _loc25_ = §§pop();
                                                                                                                                                                                                                        loop105:
                                                                                                                                                                                                                        while(!_loc28_)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc9_);
                                                                                                                                                                                                                           if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§push(0.25);
                                                                                                                                                                                                                              if(_loc27_)
                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                 if(_loc28_ && this)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    continue loop93;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 if(_loc27_)
                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                    §§push(_loc22_);
                                                                                                                                                                                                                                    loop106:
                                                                                                                                                                                                                                    while(true)
                                                                                                                                                                                                                                    {
                                                                                                                                                                                                                                       if(_loc27_ || this)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc22_);
                                                                                                                                                                                                                                          if(_loc28_ && param1)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             addr546:
                                                                                                                                                                                                                                             if(!(_loc27_ || param2))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                break;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop86;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          if(_loc28_)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop98;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                          if(!(_loc28_ && this))
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             continue loop89;
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                          addr682:
                                                                                                                                                                                                                                          while(true)
                                                                                                                                                                                                                                          {
                                                                                                                                                                                                                                             §§push(§§pop() * §§pop());
                                                                                                                                                                                                                                             addr683:
                                                                                                                                                                                                                                             while(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                addr690:
                                                                                                                                                                                                                                                if(_loc27_ || this)
                                                                                                                                                                                                                                                {
                                                                                                                                                                                                                                                   if(!_loc28_)
                                                                                                                                                                                                                                                   {
                                                                                                                                                                                                                                                      §§push(§§pop() + §§pop());
                                                                                                                                                                                                                                                      if(!_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         continue loop104;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      addr710:
                                                                                                                                                                                                                                                      addr710:
                                                                                                                                                                                                                                                      loop118:
                                                                                                                                                                                                                                                      while(!_loc28_)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         _loc26_ = §§pop();
                                                                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(!(_loc27_ || param2))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop105;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            if(!_loc27_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop80;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            addr722:
                                                                                                                                                                                                                                                            if(!(_loc28_ && param1))
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               if(_loc27_ || param2)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  if(!(_loc28_ && param2))
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     continue loop15;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  addr994:
                                                                                                                                                                                                                                                                  while(!_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     §§push(_loc8_);
                                                                                                                                                                                                                                                                     break loop118;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr1100);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  §§push(_loc13_);
                                                                                                                                                                                                                                                                  if(!_loc28_)
                                                                                                                                                                                                                                                                  {
                                                                                                                                                                                                                                                                     if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                     {
                                                                                                                                                                                                                                                                        addr960:
                                                                                                                                                                                                                                                                        §§push(Number(§§pop()));
                                                                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                                                                        {
                                                                                                                                                                                                                                                                           if(!(_loc28_ && this))
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!_loc27_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 break;
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              _loc21_ = §§pop();
                                                                                                                                                                                                                                                                              while(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc14_);
                                                                                                                                                                                                                                                                                 continue loop1;
                                                                                                                                                                                                                                                                                 §§goto(addr722);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              while(true)
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc5_);
                                                                                                                                                                                                                                                                                 break loop103;
                                                                                                                                                                                                                                                                                 §§goto(addr970);
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              addr970:
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr999:
                                                                                                                                                                                                                                                                           while(_loc27_)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                                                              {
                                                                                                                                                                                                                                                                                 §§push(_loc18_);
                                                                                                                                                                                                                                                                                 while(true)
                                                                                                                                                                                                                                                                                 {
                                                                                                                                                                                                                                                                                    §§push(_loc9_);
                                                                                                                                                                                                                                                                                    break loop97;
                                                                                                                                                                                                                                                                                    §§goto(addr690);
                                                                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                                                                 addr1009:
                                                                                                                                                                                                                                                                              }
                                                                                                                                                                                                                                                                              §§goto(addr1098);
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                           addr1065:
                                                                                                                                                                                                                                                                           while(true)
                                                                                                                                                                                                                                                                           {
                                                                                                                                                                                                                                                                              _loc5_ = §§pop();
                                                                                                                                                                                                                                                                              break loop105;
                                                                                                                                                                                                                                                                           }
                                                                                                                                                                                                                                                                        }
                                                                                                                                                                                                                                                                        continue loop3;
                                                                                                                                                                                                                                                                        addr960:
                                                                                                                                                                                                                                                                     }
                                                                                                                                                                                                                                                                     break;
                                                                                                                                                                                                                                                                  }
                                                                                                                                                                                                                                                                  §§goto(addr960);
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               while(true)
                                                                                                                                                                                                                                                               {
                                                                                                                                                                                                                                                                  _loc3_ = §§pop();
                                                                                                                                                                                                                                                                  break loop80;
                                                                                                                                                                                                                                                               }
                                                                                                                                                                                                                                                               addr1058:
                                                                                                                                                                                                                                                               addr989:
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            §§goto(addr970);
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                         continue loop15;
                                                                                                                                                                                                                                                         if(_loc27_ || param1)
                                                                                                                                                                                                                                                         {
                                                                                                                                                                                                                                                            if(_loc27_ || _loc3_)
                                                                                                                                                                                                                                                            {
                                                                                                                                                                                                                                                               continue loop76;
                                                                                                                                                                                                                                                            }
                                                                                                                                                                                                                                                            continue loop103;
                                                                                                                                                                                                                                                         }
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      while(_loc27_ || param1)
                                                                                                                                                                                                                                                      {
                                                                                                                                                                                                                                                         §§push(Number(§§pop()));
                                                                                                                                                                                                                                                         break loop79;
                                                                                                                                                                                                                                                      }
                                                                                                                                                                                                                                                      continue loop18;
                                                                                                                                                                                                                                                   }
                                                                                                                                                                                                                                                   §§goto(addr1084);
                                                                                                                                                                                                                                                }
                                                                                                                                                                                                                                                §§goto(addr1009);
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                             continue loop94;
                                                                                                                                                                                                                                             addr289:
                                                                                                                                                                                                                                             if(!(_loc28_ && _loc3_))
                                                                                                                                                                                                                                             {
                                                                                                                                                                                                                                                continue loop106;
                                                                                                                                                                                                                                             }
                                                                                                                                                                                                                                          }
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                       addr1052:
                                                                                                                                                                                                                                       while(true)
                                                                                                                                                                                                                                       {
                                                                                                                                                                                                                                          §§push(_loc12_.x);
                                                                                                                                                                                                                                          break loop83;
                                                                                                                                                                                                                                       }
                                                                                                                                                                                                                                    }
                                                                                                                                                                                                                                    continue loop100;
                                                                                                                                                                                                                                 }
                                                                                                                                                                                                                                 §§goto(addr1112);
                                                                                                                                                                                                                              }
                                                                                                                                                                                                                              §§goto(addr683);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr710);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                        while(true)
                                                                                                                                                                                                                        {
                                                                                                                                                                                                                           §§push(_loc3_);
                                                                                                                                                                                                                           addr1043:
                                                                                                                                                                                                                           while(_loc27_)
                                                                                                                                                                                                                           {
                                                                                                                                                                                                                              §§goto(addr1046);
                                                                                                                                                                                                                              §§push(_loc18_);
                                                                                                                                                                                                                           }
                                                                                                                                                                                                                           §§goto(addr1064);
                                                                                                                                                                                                                        }
                                                                                                                                                                                                                     }
                                                                                                                                                                                                                  }
                                                                                                                                                                                                                  §§goto(addr1099);
                                                                                                                                                                                                               }
                                                                                                                                                                                                               break;
                                                                                                                                                                                                            }
                                                                                                                                                                                                            §§goto(addr960);
                                                                                                                                                                                                         }
                                                                                                                                                                                                         while(true)
                                                                                                                                                                                                         {
                                                                                                                                                                                                            §§goto(addr1063);
                                                                                                                                                                                                            §§goto(addr880);
                                                                                                                                                                                                         }
                                                                                                                                                                                                      }
                                                                                                                                                                                                   }
                                                                                                                                                                                                   addr876:
                                                                                                                                                                                                }
                                                                                                                                                                                                §§goto(addr866);
                                                                                                                                                                                             }
                                                                                                                                                                                             else
                                                                                                                                                                                             {
                                                                                                                                                                                                §§goto(addr1094);
                                                                                                                                                                                             }
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       continue loop78;
                                                                                                                                                                                    }
                                                                                                                                                                                    addr1023:
                                                                                                                                                                                    while(true)
                                                                                                                                                                                    {
                                                                                                                                                                                       if(_loc27_ || param1)
                                                                                                                                                                                       {
                                                                                                                                                                                          if(_loc27_ || this)
                                                                                                                                                                                          {
                                                                                                                                                                                             _loc4_ = §§pop();
                                                                                                                                                                                             §§goto(addr1038);
                                                                                                                                                                                          }
                                                                                                                                                                                          break;
                                                                                                                                                                                       }
                                                                                                                                                                                       §§goto(addr1043);
                                                                                                                                                                                    }
                                                                                                                                                                                    §§goto(addr1085);
                                                                                                                                                                                 }
                                                                                                                                                                              }
                                                                                                                                                                              §§goto(addr876);
                                                                                                                                                                           }
                                                                                                                                                                        }
                                                                                                                                                                     }
                                                                                                                                                                     while(true)
                                                                                                                                                                     {
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                        break loop85;
                                                                                                                                                                     }
                                                                                                                                                                  }
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1011);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                            while(true)
                                                                                                                                                            {
                                                                                                                                                               §§push(§§pop() * §§pop());
                                                                                                                                                               addr1056:
                                                                                                                                                               while(true)
                                                                                                                                                               {
                                                                                                                                                                  §§push(§§pop() + §§pop());
                                                                                                                                                                  addr1057:
                                                                                                                                                                  while(true)
                                                                                                                                                                  {
                                                                                                                                                                     §§goto(addr1058);
                                                                                                                                                                  }
                                                                                                                                                               }
                                                                                                                                                            }
                                                                                                                                                         }
                                                                                                                                                         continue loop7;
                                                                                                                                                      }
                                                                                                                                                   }
                                                                                                                                                   while(true)
                                                                                                                                                   {
                                                                                                                                                      §§goto(addr1017);
                                                                                                                                                      §§goto(addr805);
                                                                                                                                                   }
                                                                                                                                                }
                                                                                                                                             }
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§goto(addr1052);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          break;
                                                                                                                                       }
                                                                                                                                       §§goto(addr865);
                                                                                                                                    }
                                                                                                                                    while(true)
                                                                                                                                    {
                                                                                                                                       §§goto(addr1021);
                                                                                                                                    }
                                                                                                                                 }
                                                                                                                              }
                                                                                                                              while(true)
                                                                                                                              {
                                                                                                                                 §§goto(addr1055);
                                                                                                                              }
                                                                                                                           }
                                                                                                                        }
                                                                                                                        §§goto(addr795);
                                                                                                                        if(_loc28_ && param1)
                                                                                                                        {
                                                                                                                           continue;
                                                                                                                        }
                                                                                                                        if(!_loc28_)
                                                                                                                        {
                                                                                                                           §§goto(addr613);
                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                        }
                                                                                                                        §§goto(addr1047);
                                                                                                                     }
                                                                                                                  }
                                                                                                                  else
                                                                                                                  {
                                                                                                                     §§goto(addr1093);
                                                                                                                  }
                                                                                                                  §§goto(addr1094);
                                                                                                               }
                                                                                                               §§goto(addr1095);
                                                                                                            }
                                                                                                            §§goto(addr1056);
                                                                                                         }
                                                                                                         §§goto(addr814);
                                                                                                      }
                                                                                                      §§goto(addr993);
                                                                                                   }
                                                                                                   §§goto(addr878);
                                                                                                }
                                                                                                while(true)
                                                                                                {
                                                                                                   §§goto(addr999);
                                                                                                }
                                                                                             }
                                                                                             while(true)
                                                                                             {
                                                                                                _loc20_ = §§pop();
                                                                                                §§goto(addr989);
                                                                                             }
                                                                                          }
                                                                                       }
                                                                                    }
                                                                                 }
                                                                                 §§goto(addr1086);
                                                                              }
                                                                              break;
                                                                              if(_loc28_ && _loc3_)
                                                                              {
                                                                                 continue;
                                                                              }
                                                                              if(!_loc28_)
                                                                              {
                                                                                 if(_loc27_)
                                                                                 {
                                                                                    if(_loc28_)
                                                                                    {
                                                                                       continue loop9;
                                                                                    }
                                                                                    §§goto(addr654);
                                                                                    §§push(0.5);
                                                                                 }
                                                                                 §§goto(addr1115);
                                                                              }
                                                                              §§goto(addr992);
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              §§goto(addr1023);
                                                                           }
                                                                        }
                                                                     }
                                                                     continue loop13;
                                                                  }
                                                               }
                                                               continue loop6;
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
                     §§goto(addr1089);
                  }
                  §§goto(addr230);
               }
               if(!(_loc28_ && this))
               {
                  §§push(param1);
                  §§push(param2);
                  if(!_loc28_)
                  {
                     §§push(§§pop() * _loc5_);
                  }
                  §§pop().§9h§ = §§pop();
                  if(_loc27_ || param2)
                  {
                     §§push(_loc3_);
                     if(_loc27_ || _loc3_)
                     {
                        §§push(1);
                        while(true)
                        {
                           §§push(_loc5_);
                           addr1264:
                           while(true)
                           {
                              §§push(§§pop() / §§pop());
                              addr1265:
                              while(true)
                              {
                                 §§push(§§pop() * §§pop());
                                 addr1266:
                                 while(true)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                           }
                        }
                        addr1263:
                     }
                     while(true)
                     {
                        _loc3_ = §§pop();
                        addr1268:
                        loop129:
                        while(true)
                        {
                           §§push(_loc4_);
                           if(_loc27_)
                           {
                              §§push(1);
                              if(_loc27_)
                              {
                                 §§push(_loc5_);
                                 if(_loc27_)
                                 {
                                    §§push(§§pop() / §§pop());
                                    if(!(_loc28_ && param2))
                                    {
                                       §§push(§§pop() * §§pop());
                                       if(_loc27_)
                                       {
                                          addr1232:
                                          if(!(_loc28_ && param1))
                                          {
                                             §§push(Number(§§pop()));
                                          }
                                          else
                                          {
                                             §§goto(addr1266);
                                          }
                                       }
                                       if(_loc28_)
                                       {
                                          continue;
                                       }
                                       _loc4_ = §§pop();
                                       while(true)
                                       {
                                          param1.center.Set(_loc3_,_loc4_);
                                          while(_loc27_)
                                          {
                                             if(_loc27_)
                                             {
                                                §§push(param1);
                                                §§push(param2);
                                                if(_loc27_)
                                                {
                                                   §§push(§§pop() * _loc6_);
                                                }
                                                §§pop().§5!W§ = §§pop();
                                                if(!_loc28_)
                                                {
                                                   return;
                                                }
                                                continue;
                                                continue;
                                             }
                                             continue loop129;
                                          }
                                       }
                                    }
                                    else
                                    {
                                       §§goto(addr1265);
                                    }
                                    §§goto(addr1266);
                                 }
                                 else
                                 {
                                    §§goto(addr1264);
                                 }
                              }
                              else
                              {
                                 §§goto(addr1263);
                              }
                              §§goto(addr1264);
                           }
                           §§goto(addr1232);
                        }
                     }
                  }
                  §§goto(addr1243);
               }
               §§goto(addr1268);
            }
         }
         while(true)
         {
            §§push(param1.center);
            if(!(_loc28_ && param2))
            {
               §§goto(addr102);
            }
            §§goto(addr132);
            §§goto(addr152);
         }
         §§goto(addr84);
      }
      
      override public function ComputeSubmergedArea(param1:b2Vec2, param2:Number, param3:b2Transform, param4:b2Vec2) : Number
      {
         var _loc27_:Boolean = false;
         var _loc28_:Boolean = true;
         var _loc12_:* = 0;
         var _loc22_:b2Vec2 = null;
         var _loc23_:* = false;
         var _loc24_:b2MassData = null;
         var _loc25_:* = NaN;
         var _loc5_:b2Vec2 = b2Math.§`q§(param3.R,param1);
         §§push(param2);
         if(_loc28_ || this)
         {
            §§push(§§pop() - b2Math.§[!N§(param1,param3.position));
            if(_loc28_ || param1)
            {
               addr57:
               §§push(Number(§§pop()));
            }
            var _loc6_:* = §§pop();
            var _loc7_:Vector.<Number> = new Vector.<Number>();
            var _loc8_:int = 0;
            var _loc9_:* = -1;
            var _loc10_:* = -1;
            var _loc11_:Boolean = false;
            if(_loc28_ || param1)
            {
               _loc12_ = 0;
            }
            loop0:
            while(true)
            {
               §§push(_loc12_);
               if(!(_loc27_ && this))
               {
                  §§push(this.§6!U§);
                  if(!(_loc27_ && param1))
                  {
                     loop1:
                     while(true)
                     {
                        if(§§pop() >= §§pop())
                        {
                           if(!_loc27_)
                           {
                              §§push(_loc8_);
                              if(_loc28_ || param3)
                              {
                                 break loop0;
                              }
                              addr475:
                              var _loc13_:* = §§pop();
                              §§push(_loc10_);
                              if(!(_loc27_ && param1))
                              {
                                 §§push(§§pop() + 1);
                                 if(_loc28_)
                                 {
                                    §§push(§§pop() % this.§6!U§);
                                 }
                                 §§push(int(§§pop()));
                              }
                              var _loc14_:* = §§pop();
                              §§push(0 - _loc7_[_loc9_]);
                              if(!_loc27_)
                              {
                                 §§push(§§pop() / (_loc7_[_loc13_] - _loc7_[_loc9_]));
                                 if(_loc28_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                              }
                              var _loc15_:* = §§pop();
                              §§push(0 - _loc7_[_loc10_]);
                              if(_loc28_)
                              {
                                 §§push(§§pop() / (_loc7_[_loc14_] - _loc7_[_loc10_]));
                                 if(!(_loc27_ && param2))
                                 {
                                    addr544:
                                    §§push(Number(§§pop()));
                                 }
                                 var _loc16_:* = §§pop();
                                 §§push(§§findproperty(b2Vec2));
                                 §§push(this.§+!f§[_loc9_].x * (1 - _loc15_));
                                 if(_loc28_ || this)
                                 {
                                    §§push(this.§+!f§[_loc13_].x * _loc15_);
                                    if(_loc28_)
                                    {
                                       addr573:
                                       §§push(§§pop() + §§pop());
                                       §§push(this.§+!f§[_loc9_].y * (1 - _loc15_));
                                       if(_loc28_)
                                       {
                                          addr584:
                                          §§push(§§pop() + this.§+!f§[_loc13_].y * _loc15_);
                                       }
                                       var _loc17_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                       §§push(§§findproperty(b2Vec2));
                                       §§push(this.§+!f§[_loc10_].x * (1 - _loc16_));
                                       if(!(_loc27_ && param1))
                                       {
                                          §§push(this.§+!f§[_loc14_].x * _loc16_);
                                          if(!_loc27_)
                                          {
                                             addr622:
                                             §§push(§§pop() + §§pop());
                                             §§push(this.§+!f§[_loc10_].y * (1 - _loc16_));
                                             if(!(_loc27_ && param3))
                                             {
                                                §§push(§§pop() + this.§+!f§[_loc14_].y * _loc16_);
                                             }
                                          }
                                          var _loc18_:b2Vec2 = new §§pop().b2Vec2(§§pop(),§§pop());
                                          var _loc19_:* = Number(0);
                                          var _loc20_:b2Vec2 = new b2Vec2();
                                          var _loc21_:b2Vec2 = this.§+!f§[_loc13_];
                                          if(!(_loc27_ && param3))
                                          {
                                             §§push(_loc13_);
                                             if(_loc28_)
                                             {
                                                §§push(int(§§pop()));
                                                if(_loc28_ || param3)
                                                {
                                                   _loc12_ = §§pop();
                                                   if(_loc28_)
                                                   {
                                                      loop11:
                                                      while(true)
                                                      {
                                                         §§push(_loc12_);
                                                         addr977:
                                                         loop18:
                                                         while(true)
                                                         {
                                                            §§push(_loc14_);
                                                            addr978:
                                                            addr723:
                                                            while(true)
                                                            {
                                                               if(§§pop() == §§pop())
                                                               {
                                                                  if(!_loc27_)
                                                                  {
                                                                     addr981:
                                                                     _loc20_.§0O§(1 / _loc19_);
                                                                     if(_loc28_ || this)
                                                                     {
                                                                     }
                                                                     addr1010:
                                                                     return _loc19_;
                                                                     addr1009:
                                                                  }
                                                                  param4.SetV(b2Math.§,p§(param3,_loc20_));
                                                               }
                                                               else
                                                               {
                                                                  §§push(_loc12_);
                                                                  if(_loc28_ || param2)
                                                                  {
                                                                     §§push(1);
                                                                     if(!_loc28_)
                                                                     {
                                                                        continue;
                                                                     }
                                                                     §§push(§§pop() + §§pop());
                                                                     if(!_loc27_)
                                                                     {
                                                                        §§push(§§pop() % this.§6!U§);
                                                                        if(!(_loc27_ && this))
                                                                        {
                                                                           addr709:
                                                                           §§push(int(§§pop()));
                                                                           if(!_loc28_)
                                                                           {
                                                                              continue loop18;
                                                                           }
                                                                           addr712:
                                                                           §§push(§§pop());
                                                                           if(!(_loc27_ && param1))
                                                                           {
                                                                              _loc12_ = §§pop();
                                                                              if(_loc28_)
                                                                              {
                                                                                 break;
                                                                              }
                                                                              continue loop18;
                                                                           }
                                                                           while(true)
                                                                           {
                                                                              if(§§pop() == §§pop())
                                                                              {
                                                                                 if(!(_loc28_ || param3))
                                                                                 {
                                                                                    break;
                                                                                 }
                                                                                 while(true)
                                                                                 {
                                                                                    _loc22_ = _loc18_;
                                                                                    if(_loc28_ || param3)
                                                                                    {
                                                                                       while(true)
                                                                                       {
                                                                                          §§push(0.5);
                                                                                          if(!(_loc27_ && param1))
                                                                                          {
                                                                                             §§push(_loc21_.x);
                                                                                             if(!(_loc27_ && param2))
                                                                                             {
                                                                                                §§push(_loc17_.x);
                                                                                                if(_loc28_)
                                                                                                {
                                                                                                   §§push(§§pop() - §§pop());
                                                                                                   if(!(_loc27_ && param3))
                                                                                                   {
                                                                                                      addr785:
                                                                                                      §§push(_loc22_.y);
                                                                                                      if(_loc28_)
                                                                                                      {
                                                                                                         §§push(_loc17_.y);
                                                                                                         if(_loc28_)
                                                                                                         {
                                                                                                            §§push(§§pop() - §§pop());
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               §§push(§§pop() * §§pop());
                                                                                                               if(!(_loc27_ && param3))
                                                                                                               {
                                                                                                                  addr804:
                                                                                                                  §§push(_loc21_.y);
                                                                                                                  if(_loc28_)
                                                                                                                  {
                                                                                                                     addr808:
                                                                                                                     §§push(_loc17_.y);
                                                                                                                     if(_loc28_)
                                                                                                                     {
                                                                                                                        §§push(§§pop() - §§pop());
                                                                                                                        if(_loc28_ || param1)
                                                                                                                        {
                                                                                                                           addr820:
                                                                                                                           §§push(_loc22_.x);
                                                                                                                           if(!_loc27_)
                                                                                                                           {
                                                                                                                              addr827:
                                                                                                                              §§push(§§pop() - §§pop() * (§§pop() - _loc17_.x));
                                                                                                                              if(_loc28_ || param2)
                                                                                                                              {
                                                                                                                                 addr836:
                                                                                                                                 §§push(§§pop() * §§pop());
                                                                                                                                 if(_loc28_)
                                                                                                                                 {
                                                                                                                                    §§push(Number(§§pop()));
                                                                                                                                    if(_loc28_ || this)
                                                                                                                                    {
                                                                                                                                       addr847:
                                                                                                                                       _loc25_ = §§pop();
                                                                                                                                       if(!_loc27_)
                                                                                                                                       {
                                                                                                                                          §§push(_loc19_);
                                                                                                                                          if(!(_loc27_ && this))
                                                                                                                                          {
                                                                                                                                             addr966:
                                                                                                                                             §§push(§§pop() + _loc25_);
                                                                                                                                             if(_loc28_)
                                                                                                                                             {
                                                                                                                                                addr970:
                                                                                                                                                §§push(Number(§§pop()));
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          _loc19_ = §§pop();
                                                                                                                                          while(true)
                                                                                                                                          {
                                                                                                                                             while(true)
                                                                                                                                             {
                                                                                                                                                §§push(_loc20_);
                                                                                                                                                §§push(_loc20_.x);
                                                                                                                                                if(_loc28_)
                                                                                                                                                {
                                                                                                                                                   §§push(_loc25_);
                                                                                                                                                   if(!(_loc27_ && param2))
                                                                                                                                                   {
                                                                                                                                                      §§push(_loc17_.x);
                                                                                                                                                      if(!_loc27_)
                                                                                                                                                      {
                                                                                                                                                         §§push(_loc21_.x);
                                                                                                                                                         if(_loc28_ || param2)
                                                                                                                                                         {
                                                                                                                                                            addr945:
                                                                                                                                                            §§push(§§pop() + §§pop());
                                                                                                                                                            if(_loc28_ || param1)
                                                                                                                                                            {
                                                                                                                                                               §§push(_loc22_.x);
                                                                                                                                                            }
                                                                                                                                                            §§push(§§pop() * §§pop());
                                                                                                                                                            if(!(_loc27_ && param1))
                                                                                                                                                            {
                                                                                                                                                               addr956:
                                                                                                                                                               §§pop().x = §§pop() + §§pop() / 3;
                                                                                                                                                               addr955:
                                                                                                                                                               do
                                                                                                                                                               {
                                                                                                                                                                  §§push(_loc20_);
                                                                                                                                                                  §§push(_loc20_.y);
                                                                                                                                                                  if(_loc27_ && param1)
                                                                                                                                                                  {
                                                                                                                                                                     continue;
                                                                                                                                                                  }
                                                                                                                                                                  §§push(_loc25_);
                                                                                                                                                                  if(!_loc27_)
                                                                                                                                                                  {
                                                                                                                                                                     §§push(_loc17_.y);
                                                                                                                                                                     if(!(_loc27_ && this))
                                                                                                                                                                     {
                                                                                                                                                                        §§push(_loc21_.y);
                                                                                                                                                                        if(!(_loc27_ && param3))
                                                                                                                                                                        {
                                                                                                                                                                           addr889:
                                                                                                                                                                           §§push(§§pop() + §§pop());
                                                                                                                                                                           if(_loc28_)
                                                                                                                                                                           {
                                                                                                                                                                              §§push(_loc22_.y);
                                                                                                                                                                           }
                                                                                                                                                                           §§push(§§pop() * §§pop());
                                                                                                                                                                           if(!(_loc27_ && this))
                                                                                                                                                                           {
                                                                                                                                                                              addr899:
                                                                                                                                                                              §§push(§§pop() + §§pop() / 3);
                                                                                                                                                                              continue;
                                                                                                                                                                           }
                                                                                                                                                                           §§goto(addr899);
                                                                                                                                                                        }
                                                                                                                                                                        §§push(§§pop() + §§pop());
                                                                                                                                                                     }
                                                                                                                                                                     §§goto(addr889);
                                                                                                                                                                  }
                                                                                                                                                                  §§goto(addr899);
                                                                                                                                                               }
                                                                                                                                                               while(§§pop().y = §§pop(), !_loc28_);
                                                                                                                                                               
                                                                                                                                                               if(!_loc28_)
                                                                                                                                                               {
                                                                                                                                                                  break;
                                                                                                                                                               }
                                                                                                                                                               if(false)
                                                                                                                                                               {
                                                                                                                                                                  continue;
                                                                                                                                                               }
                                                                                                                                                               continue loop11;
                                                                                                                                                               addr957:
                                                                                                                                                            }
                                                                                                                                                            §§goto(addr955);
                                                                                                                                                         }
                                                                                                                                                         §§push(§§pop() + §§pop());
                                                                                                                                                      }
                                                                                                                                                      §§goto(addr945);
                                                                                                                                                   }
                                                                                                                                                   §§goto(addr955);
                                                                                                                                                }
                                                                                                                                                §§goto(addr956);
                                                                                                                                             }
                                                                                                                                          }
                                                                                                                                          addr972:
                                                                                                                                       }
                                                                                                                                       §§goto(addr957);
                                                                                                                                    }
                                                                                                                                    §§goto(addr966);
                                                                                                                                 }
                                                                                                                                 §§goto(addr970);
                                                                                                                              }
                                                                                                                              §§goto(addr966);
                                                                                                                           }
                                                                                                                        }
                                                                                                                     }
                                                                                                                  }
                                                                                                                  §§goto(addr827);
                                                                                                               }
                                                                                                               §§goto(addr836);
                                                                                                            }
                                                                                                            §§goto(addr820);
                                                                                                         }
                                                                                                      }
                                                                                                      §§goto(addr827);
                                                                                                   }
                                                                                                   §§goto(addr804);
                                                                                                }
                                                                                                §§goto(addr808);
                                                                                             }
                                                                                             §§goto(addr785);
                                                                                          }
                                                                                          §§goto(addr847);
                                                                                       }
                                                                                       addr756:
                                                                                    }
                                                                                    §§goto(addr972);
                                                                                 }
                                                                              }
                                                                              else
                                                                              {
                                                                                 _loc22_ = this.§+!f§[_loc12_];
                                                                              }
                                                                              §§goto(addr756);
                                                                           }
                                                                           §§goto(addr1009);
                                                                        }
                                                                        §§goto(addr1010);
                                                                     }
                                                                     §§goto(addr709);
                                                                  }
                                                                  §§goto(addr712);
                                                               }
                                                               §§goto(addr1010);
                                                            }
                                                            while(true)
                                                            {
                                                               §§push(_loc14_);
                                                               if(_loc27_ && param2)
                                                               {
                                                                  §§goto(addr978);
                                                               }
                                                               §§goto(addr731);
                                                            }
                                                         }
                                                      }
                                                   }
                                                   §§goto(addr981);
                                                }
                                                §§goto(addr723);
                                             }
                                             §§goto(addr977);
                                          }
                                          §§goto(addr739);
                                       }
                                       §§goto(addr622);
                                    }
                                    §§goto(addr584);
                                 }
                                 §§goto(addr573);
                              }
                              §§goto(addr544);
                              addr270:
                           }
                           addr459:
                           §§push(_loc9_);
                           if(_loc28_)
                           {
                              addr474:
                              §§push(§§pop() + 1);
                              if(!(_loc27_ && this))
                              {
                                 addr471:
                                 §§push(§§pop() % this.§6!U§);
                              }
                              §§push(int(§§pop()));
                           }
                           §§goto(addr475);
                           addr390:
                           addr366:
                        }
                        else
                        {
                           _loc7_[_loc12_] = b2Math.§[!N§(_loc5_,this.§+!f§[_loc12_]) - _loc6_;
                           loop2:
                           while(true)
                           {
                              §§push(_loc7_[_loc12_] < -Number.MIN_VALUE);
                              if(!_loc27_)
                              {
                                 _loc23_ = §§pop();
                                 if(!_loc27_)
                                 {
                                    if(!_loc28_)
                                    {
                                       continue;
                                    }
                                    §§push(_loc12_);
                                    if(!_loc27_)
                                    {
                                       §§push(0);
                                       if(_loc27_)
                                       {
                                          continue loop1;
                                       }
                                       if(§§pop() > §§pop())
                                       {
                                          if(_loc28_ || param1)
                                          {
                                             §§push(_loc23_);
                                             loop3:
                                             while(true)
                                             {
                                                if(§§pop())
                                                {
                                                   if(_loc28_)
                                                   {
                                                      §§push(_loc11_);
                                                      loop4:
                                                      while(true)
                                                      {
                                                         if(!§§pop())
                                                         {
                                                            if(_loc28_)
                                                            {
                                                               §§push(_loc12_);
                                                               if(_loc28_ || param3)
                                                               {
                                                                  §§push(§§pop() - 1);
                                                                  if(!_loc27_)
                                                                  {
                                                                     §§push(int(§§pop()));
                                                                     if(_loc28_ || param3)
                                                                     {
                                                                        _loc9_ = §§pop();
                                                                        if(_loc28_)
                                                                        {
                                                                           while(true)
                                                                           {
                                                                              _loc8_++;
                                                                              if(_loc28_)
                                                                              {
                                                                                 while(true)
                                                                                 {
                                                                                    addr94:
                                                                                    loop8:
                                                                                    do
                                                                                    {
                                                                                       §§push(_loc23_);
                                                                                       if(_loc28_)
                                                                                       {
                                                                                          addr98:
                                                                                          if(_loc28_ || this)
                                                                                          {
                                                                                             continue loop3;
                                                                                          }
                                                                                          addr131:
                                                                                          while(true)
                                                                                          {
                                                                                             if(!_loc27_)
                                                                                             {
                                                                                                if(§§pop())
                                                                                                {
                                                                                                   if(!(_loc27_ && param2))
                                                                                                   {
                                                                                                      §§push(_loc12_);
                                                                                                      if(_loc28_ || param3)
                                                                                                      {
                                                                                                         §§push(§§pop() - 1);
                                                                                                         if(!_loc27_)
                                                                                                         {
                                                                                                            §§push(int(§§pop()));
                                                                                                            if(!(_loc27_ && param3))
                                                                                                            {
                                                                                                               _loc10_ = §§pop();
                                                                                                               if(!_loc27_)
                                                                                                               {
                                                                                                                  _loc8_++;
                                                                                                                  if(!_loc28_)
                                                                                                                  {
                                                                                                                     break;
                                                                                                                  }
                                                                                                                  continue loop8;
                                                                                                               }
                                                                                                               §§goto(addr270);
                                                                                                            }
                                                                                                            break loop0;
                                                                                                         }
                                                                                                         §§goto(addr474);
                                                                                                      }
                                                                                                      §§goto(addr475);
                                                                                                   }
                                                                                                   break;
                                                                                                }
                                                                                                continue loop8;
                                                                                             }
                                                                                             continue loop4;
                                                                                             §§goto(addr98);
                                                                                          }
                                                                                          addr328:
                                                                                          §§push(_loc9_);
                                                                                          if(_loc28_)
                                                                                          {
                                                                                             addr332:
                                                                                             §§push(-1);
                                                                                             if(_loc28_)
                                                                                             {
                                                                                                addr335:
                                                                                                if(§§pop() == §§pop())
                                                                                                {
                                                                                                   if(_loc28_ || param2)
                                                                                                   {
                                                                                                      §§push(this.§6!U§);
                                                                                                      if(!_loc28_)
                                                                                                      {
                                                                                                         while(true)
                                                                                                         {
                                                                                                            switch(§§pop())
                                                                                                            {
                                                                                                               case 0:
                                                                                                                  break loop2;
                                                                                                               case 1:
                                                                                                                  §§goto(addr328);
                                                                                                            }
                                                                                                            §§goto(addr459);
                                                                                                         }
                                                                                                         addr458:
                                                                                                      }
                                                                                                      §§push(§§pop() - 1);
                                                                                                      if(!(_loc27_ && param3))
                                                                                                      {
                                                                                                         §§push(int(§§pop()));
                                                                                                         if(!(_loc27_ && this))
                                                                                                         {
                                                                                                            addr363:
                                                                                                            _loc9_ = §§pop();
                                                                                                            if(_loc28_)
                                                                                                            {
                                                                                                               break loop4;
                                                                                                            }
                                                                                                            §§goto(addr459);
                                                                                                         }
                                                                                                         else
                                                                                                         {
                                                                                                            addr371:
                                                                                                            §§push(§§pop() - 1);
                                                                                                            if(!(_loc27_ && param1))
                                                                                                            {
                                                                                                               addr379:
                                                                                                               §§push(int(§§pop()));
                                                                                                               if(_loc28_)
                                                                                                               {
                                                                                                                  addr382:
                                                                                                                  _loc10_ = §§pop();
                                                                                                                  if(_loc28_ || param1)
                                                                                                                  {
                                                                                                                     §§goto(addr390);
                                                                                                                  }
                                                                                                                  §§goto(addr459);
                                                                                                               }
                                                                                                               §§goto(addr475);
                                                                                                            }
                                                                                                         }
                                                                                                         §§goto(addr471);
                                                                                                      }
                                                                                                      §§goto(addr379);
                                                                                                   }
                                                                                                   break loop4;
                                                                                                }
                                                                                                §§push(this.§6!U§);
                                                                                                if(!_loc27_)
                                                                                                {
                                                                                                   §§goto(addr371);
                                                                                                }
                                                                                                §§goto(addr475);
                                                                                             }
                                                                                             §§goto(addr474);
                                                                                          }
                                                                                          §§goto(addr363);
                                                                                       }
                                                                                       break loop2;
                                                                                    }
                                                                                    while(false);
                                                                                    
                                                                                    continue loop0;
                                                                                 }
                                                                                 addr127:
                                                                              }
                                                                              break loop4;
                                                                           }
                                                                           addr214:
                                                                        }
                                                                        §§goto(addr459);
                                                                     }
                                                                     §§goto(addr332);
                                                                  }
                                                               }
                                                               §§goto(addr474);
                                                            }
                                                            break;
                                                         }
                                                         §§goto(addr127);
                                                      }
                                                      §§goto(addr366);
                                                   }
                                                   §§goto(addr459);
                                                }
                                                else
                                                {
                                                   §§push(_loc11_);
                                                }
                                                §§goto(addr131);
                                             }
                                          }
                                          §§goto(addr214);
                                       }
                                       §§goto(addr94);
                                    }
                                    §§goto(addr382);
                                 }
                                 §§goto(addr475);
                              }
                              break;
                           }
                           if(§§pop())
                           {
                              if(!(_loc27_ && param1))
                              {
                                 _loc24_ = new b2MassData();
                                 if(_loc28_)
                                 {
                                    this.ComputeMass(_loc24_,1);
                                    param4.SetV(b2Math.§,p§(param3,_loc24_.center));
                                 }
                                 return _loc24_.§9h§;
                              }
                              §§goto(addr459);
                           }
                           else
                           {
                              §§push(0);
                              if(!(_loc27_ && param3))
                              {
                                 return §§pop();
                              }
                           }
                        }
                        §§goto(addr474);
                     }
                  }
                  §§goto(addr335);
               }
               break;
            }
            var _loc26_:* = §§pop();
            if(_loc28_)
            {
               §§push(0);
               if(_loc28_ || this)
               {
                  §§push(_loc26_);
                  if(!(_loc27_ && param3))
                  {
                     if(§§pop() === §§pop())
                     {
                        if(!(_loc27_ && param3))
                        {
                           §§push(0);
                           if(_loc27_)
                           {
                              addr435:
                              if(§§pop() === _loc26_)
                              {
                                 addr437:
                                 §§push(1);
                                 if(!(_loc27_ && param2))
                                 {
                                    addr445:
                                 }
                              }
                              else
                              {
                                 §§push(2);
                              }
                           }
                        }
                        §§goto(addr437);
                     }
                     else
                     {
                        §§push(1);
                        if(_loc28_)
                        {
                           §§goto(addr435);
                        }
                     }
                     if(!(_loc27_ && this))
                     {
                        §§goto(addr458);
                     }
                     §§goto(addr474);
                  }
                  §§goto(addr435);
               }
               §§goto(addr445);
            }
            §§goto(addr437);
         }
         §§goto(addr57);
      }
      
      public function §7T§() : int
      {
         return this.§6!U§;
      }
      
      public function §<Q§() : Vector.<b2Vec2>
      {
         return this.§+!f§;
      }
      
      public function §=L§() : Vector.<b2Vec2>
      {
         return this.§%!L§;
      }
      
      public function §-!1§(param1:b2Vec2) : int
      {
         var _loc6_:Boolean = false;
         var _loc7_:Boolean = true;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§+!f§[0].x * param1.x);
         if(_loc7_)
         {
            §§push(§§pop() + this.§+!f§[0].y * param1.y);
            if(!_loc6_)
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
            if(_loc7_)
            {
               if(§§pop() >= this.§6!U§)
               {
                  if(_loc7_)
                  {
                     if(!(_loc6_ && _loc2_))
                     {
                        addr64:
                        §§push(_loc2_);
                        if(!_loc6_)
                        {
                           break;
                        }
                        loop10:
                        while(true)
                        {
                           _loc2_ = §§pop();
                           loop4:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc7_)
                              {
                                 if(_loc7_ || _loc3_)
                                 {
                                    §§push(Number(§§pop()));
                                 }
                                 else
                                 {
                                    addr140:
                                    while(true)
                                    {
                                       §§push(Number(§§pop()));
                                       break loop4;
                                    }
                                    addr140:
                                 }
                              }
                              if(_loc7_ || param1)
                              {
                                 if(!(_loc7_ || _loc2_))
                                 {
                                    break;
                                 }
                                 _loc3_ = §§pop();
                                 while(true)
                                 {
                                    addr69:
                                    while(true)
                                    {
                                       _loc4_++;
                                       continue loop4;
                                    }
                                    continue loop0;
                                 }
                              }
                              loop2:
                              while(true)
                              {
                                 §§push(_loc3_);
                                 addr156:
                                 addr144:
                                 while(true)
                                 {
                                    if(§§pop() > §§pop())
                                    {
                                       if(_loc7_)
                                       {
                                          §§push(_loc4_);
                                          if(_loc7_)
                                          {
                                             §§push(int(§§pop()));
                                          }
                                          continue loop10;
                                       }
                                       continue loop4;
                                    }
                                    §§goto(addr69);
                                 }
                                 addr144:
                                 while(true)
                                 {
                                    _loc5_ = §§pop();
                                    continue loop2;
                                 }
                              }
                           }
                           while(true)
                           {
                              §§push(§§pop());
                              if(_loc7_)
                              {
                                 §§goto(addr144);
                              }
                              §§goto(addr156);
                           }
                        }
                     }
                     §§goto(addr116);
                  }
                  §§goto(addr71);
               }
               else
               {
                  §§push(this.§+!f§[_loc4_].x * param1.x);
                  if(!_loc6_)
                  {
                     §§push(this.§+!f§[_loc4_].y * param1.y);
                     if(_loc7_)
                     {
                        §§goto(addr140);
                        §§push(§§pop() + §§pop());
                     }
                     §§goto(addr144);
                  }
               }
               §§goto(addr140);
            }
            §§goto(addr64);
         }
         return §§pop();
      }
      
      public function §^;§(param1:b2Vec2) : b2Vec2
      {
         var _loc6_:Boolean = true;
         var _loc7_:Boolean = false;
         var _loc5_:* = NaN;
         var _loc2_:* = 0;
         §§push(this.§+!f§[0].x * param1.x);
         if(!_loc7_)
         {
            §§push(§§pop() + this.§+!f§[0].y * param1.y);
            if(!_loc7_)
            {
               addr41:
               §§push(Number(§§pop()));
            }
            var _loc3_:* = §§pop();
            var _loc4_:int = 1;
            loop0:
            while(true)
            {
               §§push(_loc4_);
               if(!(_loc7_ && _loc2_))
               {
                  if(_loc6_)
                  {
                     if(§§pop() >= this.§6!U§)
                     {
                        if(_loc6_ || param1)
                        {
                           if(!(_loc7_ && _loc3_))
                           {
                              break;
                           }
                           loop4:
                           while(true)
                           {
                              §§push(_loc5_);
                              if(_loc6_ || this)
                              {
                                 if(!(_loc7_ && param1))
                                 {
                                    addr118:
                                    §§push(Number(§§pop()));
                                    if(!_loc7_)
                                    {
                                       _loc3_ = §§pop();
                                       loop5:
                                       while(true)
                                       {
                                          addr93:
                                          while(_loc7_ && _loc3_)
                                          {
                                             continue loop5;
                                          }
                                          continue loop0;
                                       }
                                       addr121:
                                    }
                                    else
                                    {
                                       addr153:
                                       while(true)
                                       {
                                          §§push(§§pop());
                                          if(!_loc7_)
                                          {
                                             while(true)
                                             {
                                                _loc5_ = §§pop();
                                                addr157:
                                                while(true)
                                                {
                                                   §§push(_loc3_);
                                                }
                                             }
                                             addr156:
                                          }
                                          while(§§pop() > §§pop())
                                          {
                                             if(_loc7_ && _loc3_)
                                             {
                                                continue loop4;
                                             }
                                             §§push(_loc4_);
                                             while(true)
                                             {
                                                §§push(int(§§pop()));
                                                addr178:
                                                while(true)
                                                {
                                                   _loc2_ = §§pop();
                                                   continue loop4;
                                                }
                                             }
                                          }
                                       }
                                       addr153:
                                    }
                                    while(true)
                                    {
                                       _loc4_++;
                                       §§goto(addr93);
                                       §§goto(addr121);
                                    }
                                 }
                                 §§goto(addr157);
                              }
                              §§goto(addr118);
                           }
                        }
                        §§goto(addr93);
                     }
                     else
                     {
                        §§push(this.§+!f§[_loc4_].x * param1.x);
                        if(!_loc7_)
                        {
                           §§push(this.§+!f§[_loc4_].y * param1.y);
                           if(_loc6_)
                           {
                              §§push(§§pop() + §§pop());
                              if(!(_loc7_ && this))
                              {
                                 §§goto(addr153);
                                 §§push(Number(§§pop()));
                              }
                              §§goto(addr153);
                           }
                           §§goto(addr156);
                        }
                     }
                     §§goto(addr153);
                  }
                  §§goto(addr177);
               }
               §§goto(addr178);
            }
            return this.§+!f§[_loc2_];
         }
         §§goto(addr41);
      }
      
      private function §6k§() : Boolean
      {
         return false;
      }
      
      private function §3!?§(param1:int) : void
      {
         var _loc3_:Boolean = false;
         var _loc4_:Boolean = true;
         var _loc2_:int = this.§+!f§.length;
         while(true)
         {
            if(_loc2_ >= param1)
            {
               if(!_loc3_)
               {
                  if(!(_loc3_ && _loc2_))
                  {
                     break;
                  }
                  this.§%!L§[_loc2_] = new b2Vec2();
                  while(true)
                  {
                     _loc2_++;
                  }
                  addr61:
                  addr80:
               }
               while(!_loc4_)
               {
                  §§goto(addr61);
               }
               continue;
            }
            this.§+!f§[_loc2_] = new b2Vec2();
            §§goto(addr80);
         }
      }
   }
}
